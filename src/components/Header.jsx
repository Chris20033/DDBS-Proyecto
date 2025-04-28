import { useState } from 'react';
import { NavLink } from 'react-router-dom';
import axios from 'axios';

const Header = ({ 
    users, 
    login, setLogin, 
    userLogin, setUserLogin, 
    setPedidos, 
    server, 
    setMetodoPago }) => {

    const [clicked, setClicked] = useState(false); //verifica si se dio click en el icono de usuario

    const { nombre, email, password } = userLogin;

    const handleLogin = (e) => {
        // verifica si los campos de login son correctos
        e.preventDefault();

        if (!email.trim() || !password.trim()) {
            return alert('Completa todos los campos');
        }

        //verifica si el usuario y contraseña son correctos
        const founduser = users.filter(
            (usuario) => email == usuario.correo && password == usuario.contrasena
        );

        //verifica si el usuario existe
        if (founduser.length > 0) {
            const { id, nombre, apellido, correo, rol, telefono } = founduser[0];

            // Crear objeto de usuario
            const newUser = {
                id: id,
                nombre: nombre,
                apellido: apellido,
                email: correo,
                rol: rol,
                telefono: telefono,
            };

            // Actualizar estado de usuario y login
            setUserLogin(newUser);
            setLogin(true);

            // Guardar en localStorage
            localStorage.setItem('user', JSON.stringify(newUser));

            // Cerrar el popup de login
            setClicked(false);

            // Cargar los pedidos específicos del usuario que inicia sesión
            axios
                .get(`${server}/pedido/${id}`)
                .then((response) => {
                    setPedidos(response.data);
                    console.log('Pedidos:', response.data);
                })
                .catch((error) => {
                    console.error('Error fetching restaurantes:', error);
                });

                
            // Cargar los métodos de pago específicos del usuario que inicia sesión
            axios
                .get(`${server}/pago/${id}`)
                .then((response) => {
                    setMetodoPago(response.data);
                    console.log('Metodos de pago:', response.data);
                })
                .catch((error) => {
                    console.error('Error fetching restaurantes:', error);
                });

            //Cargar las direcciones específicas del usuario que inicia sesión
            axios
                .get(`${server}/direccion/${id}`)
                .then((response) => {
                    console.log('Direcciones:', response.data);
                })
                .catch((error) => {
                    console.error('Error fetching direcciones:', error);
                });
        } else {
            return alert('Usuario o contraseña incorrectos');
        }

        
    };

    const handleLogout = () => {
        localStorage.removeItem('user');
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
        // Limpiar los pedidos al cerrar sesión
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
            className="flex justify-between items-center bg-[#4ed89f] h-24 pl-10 pr-10 shadow-[0_4px_8px_rgba(0,0,0,0.5)] w-full z-50"
        >
            <NavLink to="/">
                <img src="images/logo.png" alt="" className="h-28 w-auto" />
            </NavLink>

            <div className="w-[50%] bg-[#117449] rounded-md">
                <input
                    type="text"
                    placeholder="Buscar..."
                    className=" bg-green-800 text-white w-[85%] rounded-l-md p-3"
                />
                <button className=" w-[12%] h-full text-white rounded-2xl p-3 ml-2 cursor-pointer">
                    Buscar
                </button>
            </div>

            <div className="flex justify-center items-center gap-4">
                {!login && (
                    <NavLink
                        className="p-2 rounded-md text-white font-bold text-[20px] hover:bg-[#117449]"
                        to="/registro"
                    >
                        Registrate
                    </NavLink>
                )}

                <a
                    onClick={() => setClicked(!clicked)}
                    className="flex flex-col justify-center items-center cursor-pointer relative hover:bg-[#117449] p-2 rounded-md"
                >
                    <img src="images/usr.webp" alt="" className="h-12 w-auto" />
                    {!login ? (
                        <h1 className="text-white font-bold text-[20px]">Login</h1>
                    ) : (
                        <h1 className="text-white font-bold text-[20px]">{nombre}</h1>
                    )}
                </a>
            </div>

            {clicked && (
                <div className="absolute top-20 right-2 bg-white shadow-lg rounded-lg p-4 mt-2">
                    {login ? (
                        <div className="flex flex-col items-center">
                            <h2 className="text-lg font-bold mb-2">Bienvenido {nombre}</h2>
                            <button
                                onClick={handleLogout}
                                className="bg-red-500 text-white px-4 py-2 rounded"
                            >
                                Cerrar sesión
                            </button>
                        </div>
                    ) : (
                        <div className="flex flex-col items-center">
                            <h2 className="text-lg font-bold mb-2">Iniciar sesión</h2>
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
