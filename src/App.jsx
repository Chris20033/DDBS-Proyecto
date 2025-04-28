//Components
import Aside from './components/Aside';
import Header from './components/Header';
//Pages
import Inicio from './pages/Inicio';
import Restaurantes from './pages/Restaurantes';
import Pedidos from './pages/Pedidos';
import Paquetes from './pages/Paquetes';
import Administrador from './pages/Administrador';
import Error from './pages/Error';
import LayoutPublic from './Layout/LayoutPublic';
import Registro from './pages/Registro';
import Direccion from './pages/Direccion';
import Pago from './pages/Pago';

//Funciones
import { useEffect, useState } from 'react';
import { Route, Routes, Navigate } from 'react-router-dom';
import axios from 'axios';

const App = () => {
    const server = 'http://192.168.100.156:3001';

    const [login, setLogin] = useState(false); //verificar si el usuario esta logueado o no

    const [users, setUsers] = useState([]); //tiene la lista de usuarios

    const [restaurante, setRestaurante] = useState([]); // tiene la lista de restaurantes

    const [paquetes, setPaquetes] = useState([]); // tiene la lista de paquetes

    const [pedidos, setPedidos] = useState([]); // tiene la lista de pedidos

    const [metodoPago, setMetodoPago] = useState([]); // tiene todos los metodos de pago

    const [direcciones, setDirecciones] = useState([]); // tiene todas las direcciones

    const [userLogin, setUserLogin] = useState({
        // informacion del usuario logueado
        id: '',
        nombre: '',
        apellido: '',
        email: '',
        password: '',
        rol: 'cliente',
        telefono: '',
    });

    // Función para actualizar los paquetes
    const actualizarPaquetes = (paquetesActualizados) => {
        // Si nos pasan paquetes actualizados, actualizamos el estado directamente
        if (paquetesActualizados) {
            setPaquetes(paquetesActualizados);
        }
        // Si no, recargamos desde el servidor
        else {
            axios
                .get(`${server}/paquetes`)
                .then((response) => {
                    setPaquetes(response.data);
                    console.log('Paquetes actualizados:', response.data);
                })
                .catch((error) => {
                    console.error('Error al cargar paquetes:', error);
                });
        }
    };

    // Exponer la función para que esté disponible globalmente (alternativa simple)
    window.actualizarPaquetes = actualizarPaquetes;

    useEffect(() => {
        // Recuperar usuario del localStorage
        const storedUser = localStorage.getItem('user');
        let parsedUser = null;

        if (storedUser) {
            parsedUser = JSON.parse(storedUser);
            setUserLogin(parsedUser);
            setLogin(true);

            // Obtener pedidos del usuario actual
            axios
                .get(`${server}/pedido/${parsedUser.id}`)
                .then((response) => {
                    setPedidos(response.data);
                    console.log('Pedidos del usuario', parsedUser.id, ':', response.data);
                })
                .catch((error) => {
                    console.error('Error fetching pedidos:', error);
                    // Limpiar pedidos en caso de error
                    setPedidos([]);
                });

            // Obtener métodos de pago del usuario actual
            axios
                .get(`${server}/pago/${parsedUser.id}`)
                .then((response) => {
                    setMetodoPago(response.data);
                    console.log('Metodos de pago:', response.data);
                })
                .catch((error) => {
                    console.error('Error fetching restaurantes:', error);
                });

            // Obtener direcciones del usuario actual
            axios
                .get(`${server}/direccion/${parsedUser.id}`)
                .then((response) => {
                    setDirecciones(response.data);
                    console.log('Direcciones:', response.data);
                })
                .catch((error) => {
                    console.error('Error fetching direcciones:', error);
                });
        } else {
            // Si no hay usuario, limpiar datos relacionados
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

        // Obtener usuarios
        axios
            .get(`${server}/usuarios`)
            .then((response) => {
                setUsers(response.data);
                console.log('Usuarios:', response.data);
            })
            .catch((error) => {
                console.error('Error fetching users:', error);
            });

        // Obtener paquetes
        axios
            .get(`${server}/paquetes`)
            .then((response) => {
                setPaquetes(response.data);
                console.log('Paquetes:', response.data);
            })
            .catch((error) => {
                console.error('Error fetching paquetes:', error);
            });

        // Obtener restaurantes
        axios
            .get(`${server}/restaurantes`)
            .then((response) => {
                setRestaurante(response.data);
                console.log('Restaurantes:', response.data);
            })
            .catch((error) => {
                console.error('Error fetching restaurantes:', error);
            });

        // Obtener métodos de pago
    }, [server]); // Solo depende del server, no de userLogin

    const asideOptions = [
        // opciones del aside
        { id: 1, nombre: 'Inicio', rol: 'cliente' },
        { id: 2, nombre: 'Restaurantes', rol: 'cliente' },
        { id: 3, nombre: 'Paquetes', rol: 'cliente' },
        { id: 4, nombre: 'Pedidos', rol: 'cliente' },
        { id: 5, nombre: 'Direccion', rol: 'cliente' },
        { id: 6, nombre: 'Pago', rol: 'cliente' },
        { id: 7, nombre: 'Administrador', rol: 'admin' },
    ];

    return (
        <div id="main" className="bg-[url(images/Fondo.png)] min-h-screen w-full">
            <Header
                users={users}
                userLogin={userLogin}
                setUserLogin={setUserLogin}
                login={login}
                setLogin={setLogin}
                pedidos={pedidos}
                setPedidos={setPedidos}
                server={server}
                setMetodoPago={setMetodoPago}
            />

            <Aside asideOptions={asideOptions} userLogin={userLogin} />

            <div id="content" className="flex flex-col items-center">
                <Routes>
                    <Route path="/" element={<LayoutPublic />}>
                        <Route index element={<Navigate to="/inicio" replace />} />
                        <Route element={<Inicio />} path="/inicio"></Route>
                        <Route
                            element={<Restaurantes login={login} restaurante={restaurante} />}
                            path="/restaurantes"
                        ></Route>
                        <Route
                            element={
                                <Paquetes
                                    login={login}
                                    paquetes={paquetes}
                                    restaurante={restaurante}
                                    userLogin={userLogin}
                                    server={server}
                                    metodoPago={metodoPago}
                                    direcciones={direcciones}
                                    actualizarPaquetes={actualizarPaquetes} // Pasar la función
                                />
                            }
                            path="/paquetes"
                        ></Route>
                        <Route
                            element={
                                <Pedidos
                                    userLogin={userLogin}
                                    login={login}
                                    pedidos={pedidos}
                                    server={server}
                                />
                            }
                            path="/pedidos"
                        ></Route>
                        <Route
                            element={
                                <Administrador
                                    login={login}
                                    userLogin={userLogin}
                                    users={users}
                                    setUsers={setUsers}
                                    restaurante={restaurante}
                                    setRestaurante={setRestaurante}
                                    paquetes={paquetes}
                                    setPaquetes={setPaquetes}
                                />
                            }
                            path="/administrador"
                        ></Route>

                        <Route
                            element={<Registro users={users} setUsers={setUsers} server={server} />}
                            path="/registro"
                        ></Route>
                        <Route
                            element={
                                <Direccion
                                    userLogin={userLogin}
                                    server={server}
                                    login={login}
                                    setDirecciones={setDirecciones}
                                    direcciones={direcciones}
                                />
                            }
                            path="/direccion"
                        ></Route>
                        <Route
                            element={
                                <Pago
                                    userLogin={userLogin}
                                    server={server}
                                    metodoPago={metodoPago}
                                    setMetodoPago={setMetodoPago}
                                    login={login}
                                />
                            }
                            path="/pago"
                        ></Route>
                        <Route element={<Error />} path="*"></Route>
                    </Route>
                </Routes>
            </div>

            <footer id="footer">
                <div className="bg-[#4ed89f] h-24 pl-10 pr-10 shadow-[0_4px_8px_rgba(0,0,0,0.5)]">
                    <p className="text-center text-white font-bold">
                        Universidad Autonoma de Aguascalientes
                    </p>
                </div>
            </footer>
        </div>
    );
};

export default App;
