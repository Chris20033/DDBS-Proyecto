import { useContext } from "react";
import { AppContext } from "../context/AppContext";
import { NavLink, Outlet, useLocation } from "react-router-dom";

const Administrador = () => {
    const { login, userLogin } = useContext(AppContext);
    const location = useLocation();

    // Verificar si estamos en la página principal de admin
    const isMainPage = location.pathname === "/administrador";

    const optionsAdmin = [
        { id: 1, nombre: "Administrar Usuarios" },
        { id: 2, nombre: "Administrar Pedidos" },
        { id: 3, nombre: "Administrar Paquetes" },
        { id: 4, nombre: "Administrar Restaurantes" },
    ];

    const optionRestaurante = [
        { id: 1, nombre: "Administrar Pedidos" },
        { id: 2, nombre: "Administrar Paquetes" },
    ];

    // Si no está logueado o es cliente, mostrar error
    if (!login || userLogin.rol === "cliente") {
        return (
            <div className="w-full max-w-lg mx-auto p-4 text-center">
                <div className="bg-white rounded-lg shadow-md p-6">
                    <h2 className="text-2xl font-bold text-red-600 mb-4">
                        Error 404
                    </h2>
                    <p className="text-gray-700 mb-4">
                        No tienes permisos para acceder a esta página.
                    </p>
                    <NavLink
                        to="/"
                        className="bg-green-600 hover:bg-green-700 text-white font-bold py-2 px-4 rounded inline-block"
                    >
                        Volver al inicio
                    </NavLink>
                </div>
            </div>
        );
    }

    return (
        <div className="w-full max-w-6xl mx-auto p-4 bg-gray-200 h-full w-full">
            <h1 className="text-2xl font-bold mb-6 text-center text-green-700">
                Panel de Administración
            </h1>

            {isMainPage ? (
                // Página principal con opciones
                <div className="flex flex-wrap justify-center gap-4">
                    {(userLogin.rol === "admin"
                        ? optionsAdmin
                        : optionRestaurante
                    ).map((option) => (
                        <NavLink
                            key={option.id}
                            className="bg-white shadow-md rounded-lg p-4 text-center w-full sm:w-64 hover:bg-green-500 hover:text-white transition duration-300"
                            to={`/administrador/${userLogin.rol === "admin" ? "admin" : "restaurante"}/${option.nombre.replace("Administrar ", "").toLowerCase()}`}
                        >
                            {option.nombre}
                        </NavLink>
                    ))}
                </div>
            ) : (
                // Página de contenido con nav + outlet
                <div className="flex flex-col md:flex-row gap-4">
                    {/* Navegación simple */}
                    <div className="w-full md:w-64 bg-white rounded-lg shadow-md p-4">
                        <h3 className="font-bold text-green-700 mb-3 pb-2 border-b">
                            Navegación
                        </h3>
                        <div className="space-y-2">
                            {(userLogin.rol === "admin"
                                ? optionsAdmin
                                : optionRestaurante
                            ).map((option) => {
                                const url = `/administrador/${userLogin.rol === "admin" ? "admin" : "restaurante"}/${option.nombre.replace("Administrar ", "").toLowerCase()}`;
                                const isActive = location.pathname === url;

                                return (
                                    <NavLink
                                        key={option.id}
                                        className={`block py-2 px-3 rounded ${
                                            isActive
                                                ? "bg-green-100 text-green-700 font-medium"
                                                : "hover:bg-gray-100"
                                        }`}
                                        to={url}
                                    >
                                        {option.nombre.replace(
                                            "Administrar ",
                                            ""
                                        )}
                                    </NavLink>
                                );
                            })}
                        </div>
                    </div>

                    {/* Outlet para el contenido */}
                    <div className="flex-grow bg-white rounded-lg shadow-md p-4">
                        <Outlet />
                    </div>
                </div>
            )}
        </div>
    );
};

export default Administrador;
