import { createContext, useEffect, useState } from "react";
import axios from "axios";

export const AppContext = createContext();

export const AppProvider = ({ children }) => {
    const server = "http://192.168.0.185:3001";

    const [login, setLogin] = useState(false);
    const [users, setUsers] = useState([]);
    const [restaurante, setRestaurante] = useState([]);
    const [paquetes, setPaquetes] = useState([]);
    const [pedidos, setPedidos] = useState([]);
    const [metodoPago, setMetodoPago] = useState([]);
    const [direcciones, setDirecciones] = useState([]);
    const [asideOpen, setAsideOpen] = useState(false); // Nuevo estado para controlar la visibilidad del aside
    const [userLogin, setUserLogin] = useState({
        id: "",
        nombre: "",
        apellido: "",
        email: "",
        password: "",
        rol: "cliente",
        telefono: "",
    });

    const actualizarPaquetes = (paquetesActualizados) => {
        if (paquetesActualizados) {
            setPaquetes(paquetesActualizados);
        } else {
            axios
                .get(`${server}/paquetes`)
                .then((res) => setPaquetes(res.data))
                .catch((err) =>
                    console.error("Error al cargar paquetes:", err)
                );
        }
    };

    useEffect(() => {
        const storedUser = localStorage.getItem("user");
        let parsedUser = null;

        if (storedUser) {
            parsedUser = JSON.parse(storedUser);
            setUserLogin(parsedUser);
            setLogin(true);

            axios
                .get(`${server}/pedido/${parsedUser.id}`)
                .then((res) => setPedidos(res.data))
                .catch(() => setPedidos([]));

            axios
                .get(`${server}/pago/${parsedUser.id}`)
                .then((res) => setMetodoPago(res.data));

            axios
                .get(`${server}/direccion/${parsedUser.id}`)
                .then((res) => setDirecciones(res.data));
        } else {
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
            setPedidos([]);
        }

        axios.get(`${server}/usuarios`).then((res) => setUsers(res.data));

        axios.get(`${server}/paquetes`).then((res) => setPaquetes(res.data));

        axios
            .get(`${server}/restaurantes`)
            .then((res) => setRestaurante(res.data));
    }, []);

    return (
        <AppContext.Provider
            value={{
                server,
                login,
                setLogin,
                users,
                setUsers,
                restaurante,
                setRestaurante,
                paquetes,
                setPaquetes,
                pedidos,
                setPedidos,
                metodoPago,
                setMetodoPago,
                direcciones,
                setDirecciones,
                userLogin,
                setUserLogin,
                actualizarPaquetes,
                asideOpen,
                setAsideOpen, // Añadir el nuevo estado al contexto
            }}
        >
            {children}
        </AppContext.Provider>
    );
};
