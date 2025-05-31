import { useState, useEffect, useContext, useRef } from 'react';
import { AppContext } from '../../context/AppContext';
import axios from 'axios';

const RestPaquetes = () => {
    // Extraer variables de contexto
    const { server, userLogin, headers, selectedRestaurante } = useContext(AppContext);

    // Variables de estado
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [paquetes, setPaquetes] = useState([]);
    const [imageUrls, setImageUrls] = useState({});
    const fileInputRef = useRef(null);

    // Modal para crear paquete
    const [showModal, setShowModal] = useState(false);
    const [formData, setFormData] = useState({
        nombre_paquete: '',
        descripcion: '',
        precio: '',
        stock: '',
        fecha_vencimiento: '',
        restaurante_id: selectedRestaurante,
        imagen: null,
    });
    const [imagePreview, setImagePreview] = useState(null);

    // Cargar paquetes y restaurantes al iniciar
    useEffect(() => {
        // Verificar si el usuario es de tipo restaurante
        if (userLogin.rol !== 'restaurante') {
            setLoading(false);
            return;
        }

        // Obtener los paquetes del restaurante actual
        axios
            .get(`${server}/paquetes/restaurante/${selectedRestaurante}`, { headers })
            .then((response) => {
                setPaquetes(response.data);
                setLoading(false);

                // Cargar las imágenes de los paquetes
                response.data.forEach((paquete) => {
                    if (paquete.imagen) {
                        fetchImage(`${server}${paquete.imagen}`, paquete.id);
                    }
                });
            })
            .catch((error) => {
                console.error('Error al cargar paquetes:', error);
                setError('Error al cargar los paquetes');
                setLoading(false);
            });
    }, [server, headers, userLogin.id, userLogin.rol]);

    // Funciones para gestionar paquetes
    const handleActivate = (id) => {
        axios
            .delete(`${server}/paquetes/${id}`, { data: { activo: 1 }, headers: { headers } })
            .then((response) => {
                if (response.status === 200) {
                    setPaquetes(
                        paquetes.map((paq) => (paq.id === id ? { ...paq, activo: 1 } : paq))
                    );
                }
            })
            .catch((error) => {
                console.error('Error al activar el paquete:', error);
                alert('Error al activar el paquete');
            });
    };

    const handleDeactivate = (id) => {
        axios
            .delete(`${server}/paquetes/${id}`, { data: { activo: 0 }, headers: { headers } })
            .then((response) => {
                if (response.status === 200) {
                    setPaquetes(
                        paquetes.map((paq) => (paq.id === id ? { ...paq, activo: 0 } : paq))
                    );
                }
            })
            .catch((error) => {
                console.error('Error al desactivar el paquete:', error);
                alert('Error al desactivar el paquete');
            });
    };

    // Manejo del formulario
    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });
    };

    const handleImageChange = (e) => {
        const file = e.target.files[0];
        if (file) {
            setFormData({
                ...formData,
                imagen: file,
            });

            // Crear una vista previa de la imagen
            const reader = new FileReader();
            reader.onloadend = () => {
                setImagePreview(reader.result);
            };
            reader.readAsDataURL(file);
        }
    };

    const handleSubmit = (e) => {
        e.preventDefault();

        setFormData({
            ...formData,
            restaurante_id: selectedRestaurante, // Asegurarse de que el restaurante_id sea el del usuario logueado
        });

        console.log('Datos del restaurante seleccionado:', selectedRestaurante);

        console.log('Datos del formulario enviados:', formData);

        // Configurar headers para FormData
        const configHeaders = {
            ...headers,
            'Content-Type': 'multipart/form-data',
        };

        // Enviar la solicitud POST con FormData
        axios
            .post(`${server}/paquetes`, formData, { headers: configHeaders })
            .then((response) => {
                if (response.status === 201 || response.status === 200) {
                    setPaquetes([...paquetes, response.data]);
                    alert('Paquete creado correctamente');
                }
                resetForm();
                setShowModal(false);
            })
            .catch((error) => {
                console.error('Error al guardar el paquete:', error);
                alert('Error al guardar el paquete');
            });
    };

    const resetForm = () => {
        setFormData({
            nombre_paquete: '',
            descripcion: '',
            precio: '',
            stock: '',
            fecha_vencimiento: '',
            restaurante_id: selectedRestaurante,
            imagen: null,
        });
        setImagePreview(null);
        if (fileInputRef.current) {
            fileInputRef.current.value = '';
        }
    };

    // Formatear fecha para mostrar
    const formatDate = (dateString) => {
        const options = { year: 'numeric', month: 'long', day: 'numeric' };
        return new Date(dateString).toLocaleDateString('es-ES', options);
    };

    const fetchImage = (imageUrl, id) => {
        fetch(imageUrl, {
            method: 'GET',
            headers: {
                'ngrok-skip-browser-warning': 'true',
            },
        })
            .then((response) => response.blob())
            .then((imageBlob) => {
                const imageObjectURL = URL.createObjectURL(imageBlob);
                setImageUrls((prevState) => ({
                    ...prevState,
                    [id]: imageObjectURL,
                }));
            })
            .catch((error) => {
                console.error('Error al cargar la imagen:', error);
                setImageUrls((prevState) => ({
                    ...prevState,
                    [id]: '/default-image.jpg',
                }));
            });
    };

    return (
        <>
            {userLogin.rol === 'restaurante' ? (
                <div className="container mx-auto p-4">
                    <div className="flex justify-between items-center mb-4">
                        <h2 className="text-xl font-bold">Administración de Paquetes</h2>
                        <button
                            className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
                            onClick={() => {
                                resetForm();
                                setShowModal(true);
                            }}
                        >
                            Agregar Paquete
                        </button>
                    </div>

                    {loading ? (
                        <p className="text-center">Cargando paquetes...</p>
                    ) : error ? (
                        <p className="text-center text-red-500">{error}</p>
                    ) : (
                        <div className="overflow-x-auto">
                            {paquetes.length === 0 ? (
                                <p className="text-center text-gray-500 my-8">
                                    No hay paquetes registrados. ¡Crea tu primer paquete!
                                </p>
                            ) : (
                                <table className="min-w-full bg-white border">
                                    <thead className="bg-gray-100">
                                        <tr>
                                            <th className="py-2 px-4 border-b">ID</th>
                                            <th className="py-2 px-4 border-b">Imagen</th>
                                            <th className="py-2 px-4 border-b">Nombre</th>
                                            <th className="py-2 px-4 border-b">Descripción</th>
                                            <th className="py-2 px-4 border-b">Precio</th>
                                            <th className="py-2 px-4 border-b">Stock</th>
                                            <th className="py-2 px-4 border-b">Vencimiento</th>
                                            <th className="py-2 px-4 border-b">Estado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {paquetes.map((paquete) => (
                                            <tr
                                                key={paquete.id}
                                                className="border-b hover:bg-gray-50"
                                            >
                                                <td className="py-2 px-4 text-center">
                                                    {paquete.id}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    {paquete.imagen ? (
                                                        <img
                                                            src={
                                                                imageUrls[paquete.id] ||
                                                                `${server}${paquete.imagen}`
                                                            }
                                                            alt={paquete.nombre_paquete}
                                                            className="w-16 h-16 object-cover mx-auto rounded"
                                                            onError={(e) => {
                                                                e.target.onerror = null;
                                                                e.target.src =
                                                                    'https://placehold.co/300x200/e4ffe7/56a764?text=Imagen+no+disponible';
                                                            }}
                                                        />
                                                    ) : (
                                                        <div className="w-16 h-16 bg-gray-200 flex items-center justify-center mx-auto rounded">
                                                            <span className="text-xs text-gray-500">
                                                                Sin imagen
                                                            </span>
                                                        </div>
                                                    )}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    {paquete.nombre_paquete}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    {paquete.descripcion.length > 50
                                                        ? `${paquete.descripcion.substring(0, 50)}...`
                                                        : paquete.descripcion}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    ${paquete.precio.toFixed(2)}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    {paquete.stock}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    {formatDate(paquete.fecha_vencimiento)}
                                                </td>
                                                <td className="py-2 px-4 text-center">
                                                    <div className="flex justify-center">
                                                        {paquete.activo === 0 ? (
                                                            <button
                                                                className="bg-green-500 text-white px-3 py-1 rounded hover:bg-green-600"
                                                                onClick={() =>
                                                                    handleActivate(paquete.id)
                                                                }
                                                            >
                                                                Activar
                                                            </button>
                                                        ) : (
                                                            <button
                                                                className="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600"
                                                                onClick={() =>
                                                                    handleDeactivate(paquete.id)
                                                                }
                                                            >
                                                                Desactivar
                                                            </button>
                                                        )}
                                                    </div>
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            )}
                        </div>
                    )}

                    {/* Modal para crear paquetes */}
                    {showModal && (
                        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 overflow-y-auto pt-10">
                            <div className="bg-white p-6 rounded-lg shadow-lg w-full max-w-md">
                                <h3 className="text-lg font-semibold mb-4">
                                    Agregar Nuevo Paquete
                                </h3>

                                <form onSubmit={handleSubmit}>
                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Nombre del Paquete
                                        </label>
                                        <input
                                            type="text"
                                            name="nombre_paquete"
                                            value={formData.nombre_paquete}
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            required
                                        />
                                    </div>

                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Descripción
                                        </label>
                                        <textarea
                                            name="descripcion"
                                            value={formData.descripcion}
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            rows="3"
                                            required
                                        />
                                    </div>

                                    <div className="grid grid-cols-2 gap-4 mb-4">
                                        <div>
                                            <label className="block text-sm font-medium mb-1">
                                                Precio ($)
                                            </label>
                                            <input
                                                type="number"
                                                name="precio"
                                                value={formData.precio}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                min="0"
                                                step="0.01"
                                                required
                                            />
                                        </div>
                                        <div>
                                            <label className="block text-sm font-medium mb-1">
                                                Stock
                                            </label>
                                            <input
                                                type="number"
                                                name="stock"
                                                value={formData.stock}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                min="0"
                                                required
                                            />
                                        </div>
                                    </div>

                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Fecha de Vencimiento
                                        </label>
                                        <input
                                            type="date"
                                            name="fecha_vencimiento"
                                            value={formData.fecha_vencimiento}
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            required
                                        />
                                    </div>

                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Imagen del Paquete
                                        </label>
                                        <input
                                            type="file"
                                            accept="image/*"
                                            onChange={handleImageChange}
                                            className="w-full p-2 border rounded"
                                            ref={fileInputRef}
                                        />
                                        {imagePreview && (
                                            <div className="mt-2">
                                                <p className="text-sm text-gray-600 mb-1">
                                                    Vista previa:
                                                </p>
                                                <img
                                                    src={imagePreview}
                                                    alt="Vista previa"
                                                    className="w-full h-40 object-contain border rounded"
                                                />
                                            </div>
                                        )}
                                    </div>

                                    <div className="flex justify-end gap-2">
                                        <button
                                            type="button"
                                            className="px-4 py-2 bg-gray-300 rounded hover:bg-gray-400"
                                            onClick={() => {
                                                resetForm();
                                                setShowModal(false);
                                            }}
                                        >
                                            Cancelar
                                        </button>
                                        <button
                                            type="submit"
                                            className="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700"
                                        >
                                            Guardar
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    )}
                </div>
            ) : (
                <p className="text-center text-2xl p-6">
                    No tienes permisos para acceder a esta página
                </p>
            )}
        </>
    );
};

export default RestPaquetes;
