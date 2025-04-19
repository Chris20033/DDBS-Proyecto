import { NavLink } from "react-router-dom";

const Aside = ({ asideOptions, userLogin }) => {
    return (
        <div id="aside" className="bg-[#3d3c3c] w-48 text-white pt-7 h-full">
            <ul className="flex flex-col items-center gap-4 w-full">
                {asideOptions.map((option) => {
                    if (
                        (option.rol === "admin" && userLogin.rol === "admin") ||
                        option.rol === "cliente"
                    ) {
                        return (
                            <li
                                key={option.id}
                                className="cursor-pointer hover:text-[#4ed89f] transition-colors"
                            >
                                <NavLink to={`/${option.nombre.toLowerCase()}`}>
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
