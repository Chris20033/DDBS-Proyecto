import { NavLink } from "react-router-dom";

const Aside = ({ asideOptions, userLogin }) => {
    return (
        <div id="aside" className="bg-[#3d3c3c] w-48 text-white pt-7">
            <ul className="flex flex-col items-center gap-4 h-full w-full">
                {asideOptions.map((option) => {
                    // Solo mostrar opciones para admin si el usuario está logueado y es admin
                    // O mostrar opciones para cliente si la opción es para clientes
                    if (
                        (option.rol === "admin" && userLogin.rol === "admin") ||
                        option.rol === "cliente"
                    ) {
                        return (
                            <li
                                key={option.id}
                                className="cursor-pointer hover:text-[#4ed89f] transition-colors"
                            >
                                <NavLink to={`/${option.nombre}`}>{option.nombre}</NavLink>
                            </li>
                        );
                    }
                    return null; // No mostrar la opción si no cumple los criterios
                })}
            </ul>
        </div>
    );
};

export default Aside;
