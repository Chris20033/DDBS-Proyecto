import { useState, useEffect, useContext } from 'react';
import { AppContext } from '../../context/AppContext';
import axios from 'axios';

const AdminRestaurantes = () => {
    // Extraer variables de contexto
    const { server, userLogin, headers } = useContext(AppContext);

    // Variables de estado
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [restaurante, setRestaurante] = useState([]); // Asegúrate de que restaurante sea un array
    const [usersRestaurantes, setUsersRestaurantes] = useState([]);

    // Modal para crear restaurante
    const [showModal, setShowModal] = useState(false);
    const [formData, setFormData] = useState({
        nombre_sucursal: '',
        direccion: '',
        latitud: '',
        longitud: '',
        rating_google: '0',
    });

    // Cargar restaurantes al iniciar
    useEffect(() => {
        axios
            .get(`${server}/restaurantes`, { headers })
            .then((response) => {
                if (response.status !== 200) {
                    throw new Error('Error al cargar los restaurantes');
                }
                setRestaurante(response.data);
            })
            .catch((error) => {
                console.error('Error al cargar usuarios:', error);
            });

        axios
            .get(`${server}/usuariosrestaurantes`, { headers })
            .then((res) => {
                setUsersRestaurantes(res.data);
                setLoading(false);
                console.log('Usuarios de restaurantes cargados:', res.data);
            })
            .catch((error) => {
                console.error('Error al cargar usuarios de restaurantes:', error);
                setError('Error al cargar los usuarios de restaurantes');
            });

    }, []);

    // Funciones para gestionar restaurantes
    const handleActivate = (id) => {
        axios
            .delete(`${server}/restaurantes/${id}`, {
                data: { activo: 1 },
                headers: headers,
            })
            .then((response) => {
                if (response.status === 200) {
                    setRestaurante(
                        restaurante.map((rest) => (rest.id === id ? { ...rest, activo: 1 } : rest))
                    );
                }
            })
            .catch((error) => {
                console.error('Error al activar el restaurante:', error);
                alert('Error al activar el restaurante');
            });
    };

    const handleDeactivate = (id) => {
        axios
            .delete(`${server}/restaurantes/${id}`, {
                data: { activo: 0 },
                headers: headers,
            })
            .then((response) => {
                if (response.status === 200) {
                    setRestaurante(
                        restaurante.map((rest) => (rest.id === id ? { ...rest, activo: 0 } : rest))
                    );
                }
            })
            .catch((error) => {
                console.error('Error al desactivar el restaurante:', error);
                alert('Error al desactivar el restaurante');
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

    const handleSubmit = (e) => {
        e.preventDefault();

        axios
            .post(`${server}/restaurantes`, formData, { headers })
            .then((response) => {
                if (response.status === 201 || response.status === 200) {
                    setRestaurante([...restaurante, response.data]);
                    alert('Restaurante creado correctamente');
                }
                resetForm();
                setShowModal(false);
            })
            .catch((error) => {
                console.error('Error al guardar el restaurante:', error);
                alert('Error al guardar el restaurante');
            });
    };

    const resetForm = () => {
        setFormData({
            nombre_sucursal: '',
            direccion: '',
            latitud: '',
            longitud: '',
            rating_google: '0',
        });
    };

    return (
        <>
            {userLogin.rol === 'admin' ? (
                <div className="container mx-auto p-4">
                    <div className="flex justify-between items-center mb-4">
                        <h2 className="text-xl font-bold">Administración de Restaurantes</h2>
                        <button
                            className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
                            onClick={() => {
                                resetForm();
                                setShowModal(true);
                            }}
                        >
                            Agregar Restaurante
                        </button>
                    </div>

                    {loading ? (
                        <p className="text-center">Cargando restaurantes...</p>
                    ) : error ? (
                        <p className="text-center text-red-500">{error}</p>
                    ) : (
                        <div className="overflow-x-auto">
                            <table className="min-w-full bg-white border">
                                <thead className="bg-gray-100">
                                    <tr>
                                        <th className="py-2 px-4 border-b">ID</th>
                                        <th className="py-2 px-4 border-b">Nombre</th>
                                        <th className="py-2 px-4 border-b">Dirección</th>
                                        <th className="py-2 px-4 border-b">Coordenadas</th>
                                        <th className="py-2 px-4 border-b">Rating</th>
                                        <th className="py-2 px-4 border-b">Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {restaurante.map((restaurante) => (
                                        <tr
                                            key={restaurante.id}
                                            className="border-b hover:bg-gray-50"
                                        >
                                            <td className="py-2 px-4 text-center">
                                                {restaurante.id}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                {restaurante.nombre_sucursal}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                {restaurante.direccion}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                {restaurante.latitud}, {restaurante.longitud}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                {'★'.repeat(Math.floor(restaurante.rating_google)) +
                                                    '☆'.repeat(
                                                        5 - Math.floor(restaurante.rating_google)
                                                    )}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                <div className="flex justify-center">
                                                    {restaurante.activo === 0 ? (
                                                        <button
                                                            className="bg-green-500 text-white px-3 py-1 rounded hover:bg-green-600"
                                                            onClick={() =>
                                                                handleActivate(restaurante.id)
                                                            }
                                                        >
                                                            Activar
                                                        </button>
                                                    ) : (
                                                        <button
                                                            className="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600"
                                                            onClick={() =>
                                                                handleDeactivate(restaurante.id)
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
                        </div>
                    )}

                    {/* Modal para crear restaurantes */}
                    {showModal && (
                        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
                            <div className="bg-white p-6 rounded-lg shadow-lg w-full max-w-md">
                                <h3 className="text-lg font-semibold mb-4">
                                    Agregar Nuevo Restaurante
                                </h3>

                                <form onSubmit={handleSubmit}>
                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Nombre de Sucursal
                                        </label>
                                        <input
                                            type="text"
                                            name="nombre_sucursal"
                                            value={formData.nombre_sucursal}
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            required
                                        />
                                    </div>

                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Dirección
                                        </label>
                                        <input
                                            type="text"
                                            name="direccion"
                                            value={formData.direccion}
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            required
                                        />
                                    </div>

                                    <div className="grid grid-cols-2 gap-4 mb-4">
                                        <div>
                                            <label className="block text-sm font-medium mb-1">
                                                Latitud
                                            </label>
                                            <input
                                                type="text"
                                                name="latitud"
                                                value={formData.latitud}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>
                                        <div>
                                            <label className="block text-sm font-medium mb-1">
                                                Longitud
                                            </label>
                                            <input
                                                type="text"
                                                name="longitud"
                                                value={formData.longitud}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>
                                    </div>

                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Rating (0-5)
                                        </label>
                                        <input
                                            type="number"
                                            name="rating_google"
                                            value={formData.rating_google}
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            min="0"
                                            max="5"
                                            step="0.1"
                                            required
                                        />
                                    </div>

                                    <div className="mb-4">
                                        <label className="block text-sm font-medium mb-1">
                                            Usuario Responsable
                                        </label>
                                        <select
                                            name="admin_restaurante"
                                            onChange={handleChange}
                                            className="w-full p-2 border rounded"
                                            required
                                        >
                                            {usersRestaurantes.map((user) => (
                                                <option key={user.id} value={user.id}>
                                                    {user.nombre} {user.apellido}
                                                </option>
                                            ))}
                                        </select>
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

export default AdminRestaurantes;
