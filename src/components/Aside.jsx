import { NavLink } from "react-router-dom";
import { useContext } from "react";
import { AppContext } from "../context/AppContext";

const Aside = () => {
    const { userLogin, asideOpen, setAsideOpen } = useContext(AppContext);

    const asideOptions = [
        { id: 1, nombre: "Inicio", rol: "cliente" },
        { id: 2, nombre: "Restaurantes", rol: "cliente" },
        { id: 3, nombre: "Paquetes", rol: "cliente" },
        { id: 4, nombre: "Pedidos", rol: "cliente" },
        { id: 5, nombre: "Direccion", rol: "cliente" },
        { id: 6, nombre: "Pago", rol: "cliente" },
        { id: 7, nombre: "Administrador", rol: "admin" },
    ];

    // Cerrar el menú en móviles al hacer clic en un enlace
    const handleLinkClick = () => {
        if (window.innerWidth <= 768 && asideOpen) {
            setAsideOpen(false);
            document.body.classList.remove("menu-open");
        }
    };

    return (
        <div
            id="aside"
            className={`bg-[#3d3c3c] w-48 text-white pt-7 h-full ${asideOpen ? "active" : ""}`}
        >
            {/* Botón para cerrar en la versión móvil */}
            <button
                className="md:hidden absolute top-2 right-2 text-white p-1"
                onClick={() => {
                    setAsideOpen(false);
                    document.body.classList.remove("menu-open");
                }}
            >
                <svg
                    className="w-6 h-6"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                >
                    <path
                        strokeLinecap="round"
                        strokeLinejoin="round"
                        strokeWidth={2}
                        d="M6 18L18 6M6 6l12 12"
                    />
                </svg>
            </button>

            <ul className="flex flex-col items-center gap-4 w-full">
                {asideOptions.map((option) => {
                    if (
                        (option.rol === "admin" &&
                            (userLogin.rol === "admin" ||
                                userLogin.rol === "restaurante")) ||
                        option.rol === "cliente"
                    ) {
                        return (
                            <li
                                key={option.id}
                                className="cursor-pointer hover:text-[#4ed89f] transition-colors w-full text-center"
                            >
                                <NavLink
                                    to={`/${option.nombre.toLowerCase()}`}
                                    onClick={handleLinkClick}
                                    className="block py-2 px-4 w-full hover:bg-[#2d2c2c]"
                                >
                                    {option.nombre}
                                </NavLink>
                            </li>
                        );
                    }
                    return null;
                })}
            </ul>
        </div>
    );
};

export default Aside;
