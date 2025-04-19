import Aside from "./components/Aside";
import Header from "./components/Header";
import { useEffect, useState } from "react";
import { Route, Routes, Navigate } from "react-router-dom";
import Inicio from "./pages/Inicio";
import Comprar from "./pages/Comprar";
import Pedidos from "./pages/Pedidos";
import Paquetes from "./pages/Paquetes";
import Administrador from "./pages/Administrador";
import Error from "./pages/Error";
import LayoutPublic from "./Layout/LayoutPublic";
import Registro from "./pages/Registro";
import axios from "axios";

const initialUsers = [
    {
        id: 1,
        nombre: "John",
        apellido: "Doe",
        correo: "JohnDoe@gmail.com",
        telefono: "1234567890",
        contrasena: "password",
        rol: "admin",
    },
    {
        id: 2,
        nombre: "Jane",
        apellido: "Doe",
        correo: "JaneDoe@hotmail.com",
        telefono: "0987654321",
        contrasena: "password",
        rol: "cliente",
    },
    {
        id: 3,
        nombre: "Alice",
        apellido: "Smith",
        correo: "AliceSmith@gmail.com",
        telefono: "1122334455",
        contrasena: "password",
        rol: "admin",
    },
    {
        id: 4,
        nombre: "Bob",
        apellido: "Johnson",
        correo: "BobJohnson@gmail.com",
        telefono: "5566778899",
        contrasena: "password",
        rol: "cliente",
    },
    {
        id: 5,
        nombre: "Charlie",
        apellido: "Brown",
        correo: "CharlieBrown@yahoo.com",
        telefono: "9988776655",
        contrasena: "password",
        rol: "admin",
    },
    {
        id: 6,
        nombre: "David",
        apellido: "Wilson",
        correo: "si@gmail.com",
        telefono: "1231231234",
        contrasena: "12345",
        rol: "admin",
    },
    {
        id: 7,
        nombre: "Eve",
        apellido: "Davis",
        correo: "no@gmail.com",
        telefono: "4564564567",
        contrasena: "12345",
        rol: "cliente",
    },
];

const initialRestaurante = [
    {
        id: 1,
        nombre: "Restaurante 1",
        direccion: "Calle 123",
        latitud: 12.345678,
        longitud: 98.765432,
        google_place_id: "ChIJN1t_tDeuEmsR8j0v2c3g4",
        rating_google: 4.5,
        admin_restaurante_id: 1,
    },
    {
        id: 2,
        nombre: "Restaurante 2",
        direccion: "Calle 456",
        latitud: 23.456789,
        longitud: 87.654321,
        google_place_id: "ChIJN1t_tDeuEmsR8j0v2c3g4",
        rating_google: 4.0,
        admin_restaurante_id: 2,
    },
    {
        id: 3,
        nombre: "Restaurante 3",
        direccion: "Calle 789",
        latitud: 34.56789,
        longitud: 76.54321,
        google_place_id: "ChIJN1t_tDeuEmsR8j0v2c3g4",
        rating_google: 3.5,
        admin_restaurante_id: 3,
    },
];

const initialPaquetes = [
    {
        id: 1,
        nombre_paquete: "Paquete 1",
        descripcion: "Descripción del paquete 1",
        imagen: "images/paquete1.jpg",
        precio: 100,
        stock: 10,
        fecha_vencimiento: "2023-12-31",
        restaurante_id: 1,
    },
    {
        id: 2,
        nombre_paquete: "Paquete 2",
        descripcion: "Descripción del paquete 2",
        imagen: "images/paquete2.jpg",
        precio: 200,
        stock: 5,
        fecha_vencimiento: "2023-11-30",
        restaurante_id: 2,
    },
    {
        id: 3,
        nombre_paquete: "Paquete 3",
        descripcion: "Descripción del paquete 3",
        imagen: "images/paquete3.jpg",
        precio: 150,
        stock: 8,
        fecha_vencimiento: "2023-10-31",
        restaurante_id: 3,
    },
];

const App = () => {
    const [login, setLogin] = useState(false); //verificar si el usuario esta logueado o no

    const [users, setUsers] = useState(); //tiene la lista de usuarios

    const [restaurante, setRestaurante] = useState(initialRestaurante); // tiene la lista de restaurantes

    const [paquetes, setPaquetes] = useState(initialPaquetes); // tiene la lista de paquetes

    const [userLogin, setUserLogin] = useState({
        // informacion del usuario logueado
        id: "",
        nombre: "",
        apellido: "",
        email: "",
        password: "",
        rol: "cliente",
        telefono: "",
    });

    useEffect(() => {
        // Recuperar usuario del localStorage
        const storedUser = localStorage.getItem("user");
        if (storedUser) {
            const parsedUser = JSON.parse(storedUser);
            setUserLogin(parsedUser);
            setLogin(true);
        }
    
        // Obtener usuarios
        axios.get("http://192.168.0.185:3001/usuarios")
            .then((response) => {
                setUsers(response.data);
                console.log("Usuarios:", response.data);
            })
            .catch((error) => {
                console.error("Error fetching users:", error);
            });
    
        // Obtener paquetes
        axios.get("http://192.168.0.185:3001/paquetes")
            .then((response) => {
                setPaquetes(response.data);
                console.log("Paquetes:", response.data);
            })
            .catch((error) => {
                console.error("Error fetching paquetes:", error);
            });
    
        // Obtener restaurantes
        axios.get("http://192.168.0.185:3001/restaurantes")
            .then((response) => {
                setRestaurante(response.data);
                console.log("Restaurantes:", response.data);
            })
            .catch((error) => {
                console.error("Error fetching restaurantes:", error);
            });
    }, []);
    

    const asideOptions = [
        // opciones del aside
        { id: 1, nombre: "Inicio", rol: "cliente" },
        { id: 2, nombre: "Comprar", rol: "cliente" },
        { id: 3, nombre: "Paquetes", rol: "cliente" },
        { id: 4, nombre: "Pedidos", rol: "cliente" },
        { id: 5, nombre: "Administrador", rol: "admin" },
    ];

    return (
        <div
            id="main"
            className="bg-[url(images/Fondo.png)] min-h-screen w-full"
        >
            <Header
                users={users}
                userLogin={userLogin}
                setUserLogin={setUserLogin}
                login={login}
                setLogin={setLogin}
            />

            <Aside asideOptions={asideOptions} userLogin={userLogin} />

            <div id="content" className="flex flex-col items-center">
                <Routes>
                    <Route path="/" element={<LayoutPublic />}>
                        <Route
                            index
                            element={<Navigate to="/inicio" replace />}
                        />
                        <Route element={<Inicio />} path="/inicio"></Route>
                        <Route
                            element={<Comprar login={login} />}
                            path="/comprar"
                        ></Route>
                        <Route
                            element={<Paquetes login={login} />}
                            path="/paquetes"
                        ></Route>
                        <Route
                            element={<Pedidos login={login} />}
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
                            element={
                                <Registro users={users} setUsers={setUsers} />
                            }
                            path="/registro"
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
