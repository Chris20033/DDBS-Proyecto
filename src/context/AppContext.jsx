import { createContext, useEffect, useState } from 'react';
import axios from 'axios';

export const AppContext = createContext();

export const AppProvider = ({ children }) => {
    const server = import.meta.env.VITE_API_URL;

    // Agregar un header para saltarse la advertencia de ngrok
    const headers = {
        'ngrok-skip-browser-warning': 'true', // Agregar el header en cada solicitud
    };

    const [login, setLogin] = useState(false);
    const [users, setUsers] = useState([]);
    const [restaurante, setRestaurante] = useState([]);
    const [paquetes, setPaquetes] = useState([]);
    const [pedidos, setPedidos] = useState([]);
    const [metodoPago, setMetodoPago] = useState([]);
    const [direcciones, setDirecciones] = useState([]);
    const [asideOpen, setAsideOpen] = useState(false); // Nuevo estado para controlar la visibilidad del aside
    const [userLogin, setUserLogin] = useState({
        id: '',
        nombre: '',
        apellido: '',
        email: '',
        password: '',
        rol: 'cliente',
        telefono: '',
    });
    const [selectedRestaurante, setselectedRestaurante ] = useState(null);

    const actualizarPaquetes = (paquetesActualizados) => {
        if (paquetesActualizados) {
            setPaquetes(paquetesActualizados);
        } else {
            axios
                .get(`${server}/paquetes`, { headers })
                .then((res) => setPaquetes(res.data))
                .catch((err) => console.error('Error al cargar paquetes:', err));
        }
    };

    useEffect(() => {
        const storedUser = localStorage.getItem('user');
        let parsedUser = null;

        if (storedUser) {
            parsedUser = JSON.parse(storedUser);
            setUserLogin(parsedUser);
            setLogin(true);

            // Si el usuario está logueado, hacer las peticiones necesarias
            axios
                .get(`${server}/pedido/${parsedUser.id}`, { headers })
                .then((res) => setPedidos(res.data))
                .catch(() => setPedidos([])); // En caso de error, inicializar con array vacío

            axios
                .get(`${server}/pago/${parsedUser.id}`, { headers })
                .then((res) => setMetodoPago(res.data));

            axios
                .get(`${server}/direccion/${parsedUser.id}`, { headers })
                .then((res) => setDirecciones(res.data));
        } else {
            // Si no hay usuario logueado, inicializa los estados a sus valores por defecto
            setLogin(false);
            setUserLogin({
                id: '',
                nombre: '',
                apellido: '',
                email: '',
                password: '',
                rol: 'cliente',
                telefono: '',
            });
            setPedidos([]);
        }

        // Las siguientes peticiones siempre se ejecutan
        axios.get(`${server}/usuarios`, { headers }).then((res) => setUsers(res.data));

        axios.get(`${server}/paquetes`, { headers }).then((res) => setPaquetes(res.data));

        axios.get(`${server}/restaurantes`, { headers }).then((res) => setRestaurante(res.data));
    }, []);

    return (
        <AppContext.Provider
            value={{
                headers,
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
                setAsideOpen,
                selectedRestaurante,
                setselectedRestaurante,
            }}
        >
            {children}
        </AppContext.Provider>
    );
};
