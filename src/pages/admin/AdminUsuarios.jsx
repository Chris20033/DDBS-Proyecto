import { useState, useEffect, useContext } from "react";
import { AppContext } from "../../context/AppContext";
import axios from "axios";

const AdminUsuarios = () => {
    // Extraer variables de entorno
    const { server, userLogin } = useContext(AppContext);

    // Variables de componente
    const [usuarios, setUsuarios] = useState([]);

    // Cargar usuarios al cargar el componente
    useEffect(() => {
        const fetchUsuarios = async () => {
            const response = await fetch(`${server}/usuarios`);
            const data = await response.json();
            setUsuarios(data);
        };
        fetchUsuarios();
    }, []);

    //Funciones
    //Funcion para activar un usuario
    const handleActivate = async (id) => {
        try {
            const response = await axios.delete(`${server}/usuarios/${id}`, {
                activo: 1,
            });
            if (response.status === 200) {
                setUsuarios(
                    usuarios.map((usuario) =>
                        usuario.id === id ? { ...usuario, activo: 1 } : usuario
                    )
                );
            }
        } catch (error) {
            console.error("Error al activar el usuario:", error);
        }
    };

    //Funcion para desactivar un usuario
    const handleDeactivate = async (id) => {
        try {
            const response = await axios.delete(`${server}/usuarios/${id}`, {
                activo: 0,
            });
            if (response.status === 200) {
                setUsuarios(
                    usuarios.map((usuario) =>
                        usuario.id === id ? { ...usuario, activo: 0 } : usuario
                    )
                );
            }
        } catch (error) {
            console.error("Error al desactivar el usuario:", error);
        }
    };

    return (
        <>
            {userLogin.rol === "admin" ? (
                usuarios.length > 0 ? (
                    <div className="container mx-auto p-4">
                        <div className="flex justify-between items-center mb-4">
                            <h2 className="text-xl font-bold">
                                Administración de Restaurantes
                            </h2>
                            <button
                                className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
                                onClick={() => {
                                    // resetForm();
                                    // setShowModal(true);
                                }}
                            >
                                Agregar Restaurante
                            </button>
                        </div>
                        <table className="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Rol</th>
                                    <th scope="col">Desactivar cuenta</th>
                                </tr>
                            </thead>
                            <tbody>
                                {usuarios.map((usuario) => (
                                    <tr key={usuario.id} className="border-b">
                                        <td className="text-center pl-2 pr-2">
                                            {usuario.id}
                                        </td>
                                        <td className="text-center pl-2 pr-2">
                                            {usuario.nombre}
                                        </td>
                                        <td className="text-center pl-2 pr-2">
                                            {usuario.apellido}
                                        </td>
                                        <td className="text-center pl-2 pr-2">
                                            {usuario.correo}
                                        </td>
                                        <td className="text-center pl-2 pr-2">
                                            {usuario.rol}
                                        </td>
                                        <td className="text-center pl-2 pr-2">
                                            {usuario.rol === "admin" ? (
                                                <p className="bg-blue-900 p-2 text-white rounded-md">
                                                    No se puede desactivar
                                                </p>
                                            ) : usuario.activo == 0 ? (
                                                <button
                                                    className="cursor-pointer p-2 bg-green-500 mt-2 mb-2 text-white rounded-md"
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
                                                    className="cursor-pointer p-2 bg-red-500 mt-2 mb-2 text-white rounded-md"
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
