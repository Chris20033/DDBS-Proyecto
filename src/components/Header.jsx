import { useState, useEffect } from "react";
import { NavLink } from "react-router-dom";
import axios from "axios";
import { useContext } from "react";
import { AppContext } from "../context/AppContext";

const Header = () => {
    const {
        setUsers,
        login,
        setLogin,
        userLogin,
        setUserLogin,
        setPedidos,
        server,
        setMetodoPago,
        asideOpen,
        setAsideOpen, // Añadir estos estados desde el AppContext
    } = useContext(AppContext);

    const [clicked, setClicked] = useState(false);
    const { nombre, email, password } = userLogin;

    // Función para manejar la apertura/cierre del menú lateral
    const toggleAside = () => {
        const newState = !asideOpen;
        setAsideOpen(newState);

        // Añadir/remover clase al body para el overlay
        if (newState) {
            document.body.classList.add("menu-open");
        } else {
            document.body.classList.remove("menu-open");
        }
    };

    // Cerrar menú al cambiar el tamaño de la ventana
    useEffect(() => {
        const handleResize = () => {
            if (window.innerWidth > 768 && asideOpen) {
                setAsideOpen(false);
                document.body.classList.remove("menu-open");
            }
        };

        window.addEventListener("resize", handleResize);
        return () => window.removeEventListener("resize", handleResize);
    }, [asideOpen, setAsideOpen]);

    const handleLogin = async (e) => {
        // Previene que se recargue la pagina
        e.preventDefault();

        // Validamos campos de email y password
        if (!email.trim() || !password.trim()) {
            return alert("Completa todos los campos");
        }

        try {
            // Extraemos todos los usuarios de la base de datos para tener la info actualizada
            const response = await axios.get(`${server}/usuarios`);
            const usersData = response.data;

            // Actualizamos el estado de usuarios con los datos más recientes
            setUsers(usersData);

            // Verificamos si el usuario y contraseña son correctos
            const founduser = usersData.filter(
                (usuario) =>
                    email === usuario.correo && password === usuario.contrasena
            );

            // Verificamos si el usuario existe
            if (founduser.length > 0) {
                const { id, nombre, apellido, correo, rol, telefono, activo } =
                    founduser[0];

                console.log("Usuario encontrado:", founduser[0]);

                // Verificamos si el usuario está activo
                if (activo === 0) {
                    return alert("Usuario inactivo, contacta al administrador");
                }

                // Creamos objeto de usuario
                const newUser = {
                    id: id,
                    nombre: nombre,
                    apellido: apellido,
                    email: correo,
                    rol: rol,
                    telefono: telefono,
                };

                // Actualizamos estado de usuario y login
                setUserLogin(newUser);
                setLogin(true);

                // Guardamos en localStorage
                localStorage.setItem("user", JSON.stringify(newUser));

                // Cerramos el popup de login
                setClicked(false);

                // Cargamos los pedidos específicos del usuario que inicia sesión
                try {
                    const pedidosResponse = await axios.get(
                        `${server}/pedido/${id}`
                    );
                    setPedidos(pedidosResponse.data);
                    console.log("Pedidos:", pedidosResponse.data);
                } catch (error) {
                    console.error("Error al cargar pedidos:", error);
                    setPedidos([]); // En caso de error, inicializar con array vacío
                }

                // Cargamos los métodos de pago específicos del usuario que inicia sesión
                try {
                    const pagosResponse = await axios.get(
                        `${server}/pago/${id}`
                    );
                    setMetodoPago(pagosResponse.data);
                    console.log("Métodos de pago:", pagosResponse.data);
                } catch (error) {
                    console.error("Error al cargar métodos de pago:", error);
                }

                // Cargamos las direcciones específicas del usuario que inicia sesión
                try {
                    const direccionesResponse = await axios.get(
                        `${server}/direccion/${id}`
                    );
                    console.log("Direcciones:", direccionesResponse.data);
                } catch (error) {
                    console.error("Error al cargar direcciones:", error);
                }

                console.log("Usuario logueado:", newUser);
            } else {
                return alert("Usuario o contraseña incorrectos");
            }
        } catch (error) {
            console.error("Error al obtener usuarios:", error);
            alert("Error al conectar con el servidor. Intente nuevamente.");
        }
    };

    const handleLogout = () => {
        localStorage.removeItem("user");
        setLogin(false);
        setUserLogin({
            id: "",
            nombre: "",
            apellido: "",
            email: "",
            password: "",
            rol: "cliente",
            telefono: "",
        });
        // Limpiamos los pedidos al cerrar sesión
        setPedidos([]);
    };

    const handleChange = (e) => {
        const { name, value } = e.target;
        setUserLogin({
            ...userLogin,
            [name]: value,
        });
    };

    return (
        <div
            id="header"
            className="flex justify-between items-center bg-[#4ed89f] h-24 pl-4 pr-4 md:pl-10 md:pr-10 shadow-[0_4px_8px_rgba(0,0,0,0.5)] w-full z-50"
        >
            {/* Botón de menú para móviles */}
            <button
                className="md:hidden p-2 text-white"
                onClick={toggleAside}
                aria-label="Toggle menu"
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
                        d="M4 6h16M4 12h16M4 18h16"
                    />
                </svg>
            </button>

            <NavLink to="/" className="flex items-center">
                <img
                    src="/images/logo.png"
                    alt="NO JALA"
                    className="h-20 md:h-28 w-auto "
                />
            </NavLink>

            <div className="hidden md:flex w-[50%] bg-[#117449] rounded-md">
                <input
                    type="text"
                    placeholder="Buscar..."
                    className="bg-green-800 text-white w-[85%] rounded-l-md p-3"
                />
                <button className="w-[12%] h-full text-white rounded-2xl p-3 ml-2 cursor-pointer">
                    Buscar
                </button>
            </div>

            <div className="flex justify-center items-center gap-2 md:gap-4">
                {!login && (
                    <NavLink
                        className="p-1 md:p-2 rounded-md text-white font-bold text-sm md:text-[20px] hover:bg-[#117449]"
                        to="/registro"
                    >
                        Registrarte
                    </NavLink>
                )}

                <a
                    onClick={() => setClicked(!clicked)}
                    className="flex flex-col justify-center items-center cursor-pointer relative hover:bg-[#117449] p-1 md:p-2 rounded-md"
                >
                    <img
                        src="/images/usr.webp"
                        alt="NO JALA"
                        className="h-8 md:h-12 w-auto"
                    />
                    {!login ? (
                        <h1 className="text-white font-bold text-sm md:text-[20px]">
                            Login
                        </h1>
                    ) : (
                        <h1 className="text-white font-bold text-sm md:text-[20px]">
                            {nombre}
                        </h1>
                    )}
                </a>
            </div>

            {/* Popup de login existente */}
            {clicked && (
                <div className="absolute top-20 right-2 bg-white shadow-lg rounded-lg p-4 mt-2 z-50">
                    {login ? (
                        <div className="flex flex-col items-center">
                            <h2 className="text-lg font-bold mb-2">
                                Bienvenido {nombre}
                            </h2>
                            <button
                                onClick={handleLogout}
                                className="bg-red-500 text-white px-4 py-2 rounded"
                            >
                                Cerrar sesión
                            </button>
                        </div>
                    ) : (
                        <div className="flex flex-col items-center">
                            <h2 className="text-lg font-bold mb-2">
                                Iniciar sesión
                            </h2>
                            <form
                                onSubmit={handleLogin}
                                className="flex flex-col items-center mb-4"
                                method="post"
                            >
                                <input
                                    type="text"
                                    name="email"
                                    placeholder="Correo"
                                    className="border border-gray-300 rounded px-2 py-1 mb-2"
                                    value={email}
                                    onChange={handleChange}
                                />
                                <input
                                    type="password"
                                    name="password"
                                    placeholder="Contraseña"
                                    className="border border-gray-300 rounded px-2 py-1 mb-2"
                                    value={password}
                                    onChange={handleChange}
                                />
                                <button
                                    type="submit"
                                    className="bg-green-500 text-white px-4 py-2 rounded"
                                >
                                    Iniciar sesión
                                </button>
                            </form>
                        </div>
                    )}
                </div>
            )}
        </div>
    );
};

export default Header;
