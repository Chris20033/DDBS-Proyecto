import { useState, useEffect, useContext } from "react";
import { AppContext } from "../../context/AppContext";
import axios from "axios";

const AdminUsuarios = () => {
    // Extraer variables de entorno
    const { server, userLogin, headers } = useContext(AppContext);

    // Variables de componente
    const [usuarios, setUsuarios] = useState([]); // Asegúrate de que usuarios sea un array

    // Cargar usuarios al cargar el componente
    useEffect(() => {
        axios
            .get(`${server}/usuarios`, { headers })
            .then((response) => {
                setUsuarios(response.data); // Guardar los usuarios en el estado
            })
            .catch((error) => {
                console.error("Error al cargar usuarios:", error);
            });
    }, [server, headers]); // Dependencia para asegurarse de que la petición se ejecute al cambio de headers

    // Funciones
    // Funcion para activar un usuario
    const handleActivate = (id) => {
        axios
            .delete(`${server}/usuarios/${id}`, {
                data: { activo: 1 },
                headers: headers, // Aseguramos que se pase el header
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
                console.error("Error al activar el usuario:", error);
            });
    };

    // Funcion para desactivar un usuario
    const handleDeactivate = (id) => {
        axios
            .delete(`${server}/usuarios/${id}`, {
                data: { activo: 0 },
                headers: headers, // Aseguramos que se pase el header
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
                console.error("Error al desactivar el usuario:", error);
            });
    };

    return (
        <>
            {userLogin.rol === "admin" ? (
                usuarios.length > 0 ? (
                    <div className="container mx-auto p-4">
                        <div className="flex justify-between items-center mb-4">
                            <h2 className="text-xl font-bold">
                                Administración de Usuarios
                            </h2>
                            <button
                                className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
                                onClick={() => {
                                    // resetForm();
                                    // setShowModal(true);
                                }}
                            >
                                Agregar Usuario
                            </button>
                        </div>
                        <table className="min-w-full bg-white border">
                            <thead className="bg-gray-100">
                                <tr >
                                    <th scope="col" className="py-2 px-4 border-b">ID</th>
                                    <th scope="col" className="py-2 px-4 border-b">Nombre</th>
                                    <th scope="col" className="py-2 px-4 border-b">Apellido</th>
                                    <th scope="col" className="py-2 px-4 border-b">Email</th>
                                    <th scope="col" className="py-2 px-4 border-b">Rol</th>
                                    <th scope="col" className="py-2 px-4 border-b">Desactivar cuenta</th>
                                </tr>
                            </thead>
                            <tbody>
                                {Array.isArray(usuarios) && usuarios.map((usuario) => (
                                    <tr key={usuario.id} className="border-b hover:bg-gray-50">
                                        <td className="py-2 px-4 text-center">
                                            {usuario.id}
                                        </td>
                                        <td className="py-2 px-4 text-center">
                                            {usuario.nombre}
                                        </td>
                                        <td className="py-2 px-4 text-center">
                                            {usuario.apellido}
                                        </td>
                                        <td className="py-2 px-4 text-center">
                                            {usuario.correo}
                                        </td>
                                        <td className="py-2 px-4 text-center">
                                            {usuario.rol}
                                        </td>
                                        <td className="py-2 px-4 text-center">
                                            {usuario.rol === "admin" ? (
                                                <p className="bg-blue-900 p-2 text-white rounded-md">
                                                    No se puede desactivar
                                                </p>
                                            ) : usuario.activo == 0 ? (
                                                <button
                                                    className="cursor-pointer bg-green-500 text-white px-3 py-1 rounded hover:bg-green-600"
                                                    onClick={() =>
                                                        handleActivate(
                                                            usuario.id
                                                        )
                                                    }
                                                >
                                                    Activar
                                                </button>
                                            ) : (
                                                <button
                                                    className="cursor-pointer bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600"
                                                    onClick={() =>
                                                        handleDeactivate(
                                                            usuario.id
                                                        )
                                                    }
                                                >
                                                    Desactivar
                                                </button>
                                            )}
                                        </td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
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
