import { useState, useEffect, useContext } from 'react';
import { AppContext } from '../../context/AppContext';
import axios from 'axios';

const AdminUsuarios = () => {
    // Extraer variables de entorno
    const { server, userLogin, headers } = useContext(AppContext);

    // Variables de componente
    const [usuarios, setUsuarios] = useState([]); 

    // Modal para crear usuario
    const [showModal, setShowModal] = useState(false);
    const [formData, setFormData] = useState({
        nombre: '',
        apellido: '',
        correo: '',
        telefono: '',
        contrasena: '',
        rol: 'cliente',
    });

    // Cargar usuarios al cargar el componente
    useEffect(() => {
        axios
            .get(`${server}/usuarios`, { headers })
            .then((response) => {
                setUsuarios(response.data); // Guardar los usuarios en el estado
            })
            .catch((error) => {
                console.error('Error al cargar usuarios:', error);
            });
    }, [server, headers]); 

    // Funciones
    // Funcion para activar un usuario
    const handleActivate = (id) => {
        axios
            .delete(`${server}/usuarios/${id}`, {
                data: { activo: 1 },
                headers: headers, 
            })
            .then((response) => {
                if (response.status === 200) {
                    setUsuarios(
                        usuarios.map((usuario) =>
                            usuario.id === id ? { ...usuario, activo: 1 } : usuario
                        )
                    );
                }
            })
            .catch((error) => {
                console.error('Error al activar el usuario:', error);
            });
    };

    // Funcion para desactivar un usuario
    const handleDeactivate = (id) => {
        axios
            .delete(`${server}/usuarios/${id}`, {
                data: { activo: 0 },
                headers: headers, 
            })
            .then((response) => {
                if (response.status === 200) {
                    setUsuarios(
                        usuarios.map((usuario) =>
                            usuario.id === id ? { ...usuario, activo: 0 } : usuario
                        )
                    );
                }
            })
            .catch((error) => {
                console.error('Error al desactivar el usuario:', error);
            });
    };

    // Funciones para el modal de crear usuario
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
            .post(`${server}/usuarios`, formData, { headers })
            .then((response) => {
                if (response.status === 201 || response.status === 200) {
                    console.log();
                    setUsuarios([...usuarios, {id: response.data, ...formData, activo: 1}]); 
                    alert('Usuario creado correctamente');
                }
                resetForm();
                setShowModal(false);
            })
            .catch((error) => {
                console.error('Error al guardar el usuario:', error);
                alert('Error al guardar el usuario');
            });
    };

    const resetForm = () => {
        setFormData({
            nombre: '',
            apellido: '',
            correo: '',
            telefono: '',
            contrasena: '',
            rol: 'cliente',
        });
    };

    return (
        <>
            {userLogin.rol === 'admin' ? (
                usuarios.length > 0 ? (
                    <div className="container mx-auto p-4">
                        <div className="flex justify-between items-center mb-4">
                            <h2 className="text-xl font-bold">Administración de Usuarios</h2>
                            <button
                                className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
                                onClick={() => {
                                    resetForm();
                                    setShowModal(true);
                                }}
                            >
                                Agregar Usuario
                            </button>
                        </div>
                        <table className="min-w-full bg-white border">
                            <thead className="bg-gray-100">
                                <tr>
                                    <th scope="col" className="py-2 px-4 border-b">
                                        ID
                                    </th>
                                    <th scope="col" className="py-2 px-4 border-b">
                                        Nombre
                                    </th>
                                    <th scope="col" className="py-2 px-4 border-b">
                                        Apellido
                                    </th>
                                    <th scope="col" className="py-2 px-4 border-b">
                                        Email
                                    </th>
                                    <th scope="col" className="py-2 px-4 border-b">
                                        Rol
                                    </th>
                                    <th scope="col" className="py-2 px-4 border-b">
                                        Desactivar cuenta
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                {Array.isArray(usuarios) &&
                                    usuarios.map((usuario) => (
                                        <tr key={usuario.id} className="border-b hover:bg-gray-50">
                                            <td className="py-2 px-4 text-center">{usuario.id}</td>
                                            <td className="py-2 px-4 text-center">
                                                {usuario.nombre}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                {usuario.apellido}
                                            </td>
                                            <td className="py-2 px-4 text-center">
                                                {usuario.correo}
                                            </td>
                                            <td className="py-2 px-4 text-center">{usuario.rol}</td>
                                            <td className="py-2 px-4 text-center">
                                                {usuario.rol === 'admin' ? (
                                                    <p className="bg-blue-900 p-2 text-white rounded-md">
                                                        No se puede desactivar
                                                    </p>
                                                ) : usuario.activo == 0 ? (
                                                    <button
                                                        className="cursor-pointer bg-green-500 text-white px-3 py-1 rounded hover:bg-green-600"
                                                        onClick={() => handleActivate(usuario.id)}
                                                    >
                                                        Activar
                                                    </button>
                                                ) : (
                                                    <button
                                                        className="cursor-pointer bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600"
                                                        onClick={() => handleDeactivate(usuario.id)}
                                                    >
                                                        Desactivar
                                                    </button>
                                                )}
                                            </td>
                                        </tr>
                                    ))}
                            </tbody>
                        </table>

                        {/* Modal para crear usuarios */}
                        {showModal && (
                            <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
                                <div className="bg-white p-6 rounded-lg shadow-lg w-full max-w-md">
                                    <h3 className="text-lg font-semibold mb-4">
                                        Agregar Nuevo Usuario
                                    </h3>

                                    <form onSubmit={handleSubmit}>
                                        <div className="mb-4">
                                            <label className="block text-sm font-medium mb-1">
                                                Nombre
                                            </label>
                                            <input
                                                type="text"
                                                name="nombre"
                                                value={formData.nombre}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>

                                        <div className="mb-4">
                                            <label className="block text-sm font-medium mb-1">
                                                Apellido
                                            </label>
                                            <input
                                                type="text"
                                                name="apellido"
                                                value={formData.apellido}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>

                                        <div className="mb-4">
                                            <label className="block text-sm font-medium mb-1">
                                                Correo Electrónico
                                            </label>
                                            <input
                                                type="email"
                                                name="correo"
                                                value={formData.correo}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>

                                        <div className="mb-4">
                                            <label className="block text-sm font-medium mb-1">
                                                Teléfono
                                            </label>
                                            <input
                                                type="tel"
                                                name="telefono"
                                                value={formData.telefono}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>

                                        <div className="mb-4">
                                            <label className="block text-sm font-medium mb-1">
                                                Contraseña
                                            </label>
                                            <input
                                                type="password"
                                                name="contrasena"
                                                value={formData.contrasena}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            />
                                        </div>

                                        <div className="mb-4">
                                            <label className="block text-sm font-medium mb-1">
                                                Rol
                                            </label>
                                            <select
                                                name="rol"
                                                value={formData.rol}
                                                onChange={handleChange}
                                                className="w-full p-2 border rounded"
                                                required
                                            >
                                                <option value="cliente">Cliente</option>
                                                <option value="restaurante">Restaurante</option>
                                                <option value="admin">Administrador</option>
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
                    <p>Cargando...</p> // Mensaje de carga o vacío
                )
            ) : (
                <p className="text-center text-2xl">
                    No tienes permisos para acceder a esta página
                </p>
            )}
        </>
    );
};

export default AdminUsuarios;
