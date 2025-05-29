import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useContext } from 'react';
import { AppContext } from '../context/AppContext';
import Products from '../components/Products';
import { Link } from 'react-router-dom';

const Paquetes = () => {
    const {
        login,
        userLogin,
        paquetes,
        setPaquetes,
        restaurante,
        metodoPago,
        direcciones,
        server,
        setPedidos,
        headers,
    } = useContext(AppContext);

    const [mensaje, setMensaje] = useState('');
    const [mostrarPaquetes, setMostrarPaquetes] = useState(false);
    const [isProcessing, setIsProcessing] = useState(false);
    const [selectedDireccion, setSelectedDireccion] = useState(null);
    const [selectedPago, setSelectedPago] = useState(null);
    const [showModal, setShowModal] = useState(false);
    const [currentPaquete, setCurrentPaquete] = useState(null);

    // Verificar requisitos al montar el componente o cuando cambien las props relevantes
    useEffect(() => {
        // Verifica si el usuario está logueado y tiene direcciones y métodos de pago
        if (login) {
            setMostrarPaquetes(direcciones.length > 0 && metodoPago.length > 0);
            // Establecer valores por defecto para dirección y método de pago
            if (direcciones.length > 0) setSelectedDireccion(direcciones[0].id);
            if (metodoPago.length > 0) setSelectedPago(metodoPago[0].id);
        }
    }, [login, direcciones, metodoPago]);

    // Función para formatear la fecha
    const formatDate = (dateString) => {
        const options = { year: 'numeric', month: 'long', day: 'numeric' };
        return new Date(dateString).toLocaleDateString('es-ES', options);
    };

    // Función para encontrar el nombre del restaurante por ID
    const getRestauranteName = (restauranteId) => {
        const rest = restaurante.find((r) => r.id === restauranteId);
        return rest ? rest.nombre_sucursal : 'Restaurante no encontrado';
    };

    // Función para iniciar el proceso de compra
    const iniciarCompra = (paquete) => {
        if (!login) {
            alert('Para comprar este paquete, primero debes iniciar sesión.');
            return;
        }

        // Verificar si tiene direcciones
        if (direcciones.length === 0) {
            alert(
                'No tienes direcciones registradas. Por favor, registra una dirección antes de continuar.'
            );
            return;
        }

        // Verificar si tiene métodos de pago
        if (metodoPago.length === 0) {
            alert(
                'No tienes métodos de pago registrados. Por favor, registra un método de pago antes de continuar.'
            );
            return;
        }

        // Verificar si hay suficiente stock
        const cantidad = paquete.cantidad || 1; // Si no viene cantidad, asumimos 1
        if (paquete.stock < cantidad) {
            alert(`No hay suficiente stock. Stock disponible: ${paquete.stock}`);
            return;
        }

        // Guardar el paquete seleccionado y mostrar el modal
        setCurrentPaquete({ ...paquete });
        setShowModal(true);
    };

    // Función para manejar la compra (enviar al servidor)
    const handleCompra = async () => {
        if (!currentPaquete || !selectedDireccion || !selectedPago) {
            alert('Por favor selecciona una dirección y un método de pago.');
            return;
        }

        // Obtener la cantidad seleccionada (con valor predeterminado de 1)
        const cantidad = currentPaquete.cantidad || 1;

        // Verificar que haya suficiente stock
        if (currentPaquete.stock < cantidad) {
            alert(
                `Lo sentimos, no hay suficiente stock disponible. Stock actual: ${currentPaquete.stock}`
            );
            setShowModal(false);
            return;
        }

        setIsProcessing(true);

        try {
            // Crear objeto de pedido
            const now = new Date();
            const fechaFormateada = now.toISOString().slice(0, 19).replace('T', ' ');

            const nuevoPedido = {
                usuario_id: userLogin.id,
                fecha_pedido: fechaFormateada,
                direccion_id: selectedDireccion,
                metodo_pago_id: selectedPago,
                tipo_entrega: 'domicilio',
                total: currentPaquete.precio * cantidad, // Multiplicar por cantidad
                estatus: 'En proceso',
            };

            // Enviar el pedido al servidor
            const responsePedido = await axios.post(`${server}/pedido`, nuevoPedido, {
                headers: {
                    'ngrok-skip-browser-warning': 'true',
                },
            });

            if (responsePedido.data && responsePedido.data.id) {
                // Crear detalle del pedido
                const detallePedido = {
                    pedido_id: responsePedido.data.id,
                    paquete_id: currentPaquete.id,
                    cantidad: cantidad, // Usar cantidad seleccionada
                    precio_unitario: currentPaquete.precio,
                };

                // Enviar el detalle al servidor
                await axios.post(`${server}/detalle-pedido`, detallePedido, {
                    headers: {
                        'ngrok-skip-browser-warning': 'true',
                    },
                });

                // Actualizar el stock del paquete
                await axios.put(
                    `${server}/paquete/stock/${currentPaquete.id}`,
                    {
                        cantidad: cantidad, // Usar cantidad seleccionada
                    },
                    {
                        headers: {
                            'ngrok-skip-browser-warning': 'true', // Agregar el header para evitar la advertencia
                        },
                    }
                );

                // Cerrar modal y mostrar mensaje de éxito
                setShowModal(false);
                setCurrentPaquete(null);
                setMensaje(
                    `¡Gracias por tu compra! Has adquirido ${cantidad} unidad(es) del paquete "${currentPaquete.nombre_paquete}". ID del pedido: ${responsePedido.data.id}`
                );

                // Actualizar la lista de paquetes para reflejar el nuevo stock
                const paquetesActualizados = paquetes.map((p) => {
                    if (p.id === currentPaquete.id) {
                        return { ...p, stock: p.stock - cantidad }; // Reducir por cantidad
                    }
                    return p;
                });

                setPaquetes(paquetesActualizados);

                const PedidosActualizados = await axios.get(`${server}/pedido/${userLogin.id}`, {headers});
                setPedidos(PedidosActualizados.data);

                setTimeout(() => setMensaje(''), 5000);
            } else {
                throw new Error('No se pudo crear el pedido');
            }
        } catch (error) {
            console.error('Error al procesar la compra:', error);

            // Mensaje de error más específico
            if (
                error.response &&
                error.response.data &&
                error.response.data.message === 'Stock insuficiente'
            ) {
                alert(
                    `Lo sentimos, no hay suficiente stock disponible para este paquete. Stock disponible: ${error.response.data.stockDisponible}`
                );
            } else {
                alert(
                    'Hubo un error al procesar tu compra. Por favor, intenta de nuevo más tarde.'
                );
            }
        } finally {
            setIsProcessing(false);
        }
    };

    return (
        <div className="w-full max-w-6xl mx-auto px-2 md:px-4 py-4 md:py-8">
            {/* Mensajes informativos (igual que antes) */}
            {!login && (
                <div
                    className="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-700 p-4 mb-6"
                    role="alert"
                >
                    <p className="font-bold">Atención</p>
                    <p>Para comprar paquetes debes iniciar sesión primero.</p>
                </div>
            )}

            {/* Mensaje de éxito en compra */}
            {login && mensaje && (
                <div
                    className="bg-green-100 border-l-4 border-green-500 text-green-700 p-4 mb-6"
                    role="alert"
                >
                    <p>{mensaje}</p>
                </div>
            )}

            {/* Mensajes sobre direcciones y métodos de pago (igual que antes) */}
            {login && direcciones.length === 0 && (
                <div
                    className="bg-red-100 border-l-4 border-red-500 text-red-700 p-4 mb-4"
                    role="alert"
                >
                    <p className="font-bold">Sin dirección registrada</p>
                    <p className="mb-2">
                        Para ver y comprar paquetes, necesitas registrar al menos una dirección de
                        entrega.
                    </p>
                    <Link
                        to="/direccion"
                        className="inline-block bg-red-600 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
                    >
                        Registrar dirección
                    </Link>
                </div>
            )}

            {login && metodoPago.length === 0 && (
                <div
                    className="bg-orange-100 border-l-4 border-orange-500 text-orange-700 p-4 mb-4"
                    role="alert"
                >
                    <p className="font-bold">Sin método de pago</p>
                    <p className="mb-2">
                        Para ver y comprar paquetes, necesitas registrar al menos un método de pago.
                    </p>
                    <Link
                        to="/pago"
                        className="inline-block bg-orange-600 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded"
                    >
                        Registrar método de pago
                    </Link>
                </div>
            )}

            <h1 className="text-xl md:text-3xl font-bold text-green-700 mb-4 md:mb-6 text-center bg-gray-300 p-2">
                Paquetes Disponibles
            </h1>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 bg-gray-300 p-3 md:p-6">
                {!login ? (
                    <div className="col-span-full text-center py-10">
                        <p className="text-green-700 text-xl">
                            Inicia sesión para ver los paquetes disponibles.
                        </p>
                    </div>
                ) : !mostrarPaquetes ? (
                    <div className="col-span-full text-center py-10">
                        <p className="text-green-700 text-xl">
                            Completa los requisitos mencionados arriba para ver los paquetes
                            disponibles.
                        </p>
                    </div>
                ) : paquetes.length === 0 ? (
                    <div className="col-span-full text-center py-10">
                        <p className="text-green-700 text-xl">
                            No hay paquetes disponibles en este momento.
                        </p>
                    </div>
                ) : (
                    paquetes.map((paquete) => (
                        <Products
                            key={paquete.id}
                            paquete={paquete}
                            formatDate={formatDate}
                            getRestauranteName={getRestauranteName}
                            handleCompra={iniciarCompra}
                            login={login}
                        />
                    ))
                )}
            </div>

            {/* Modal de confirmación de compra */}
            {showModal && currentPaquete && (
                <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
                    <div className="bg-white rounded-lg shadow-xl p-6 max-w-md w-full">
                        <h2 className="text-2xl font-bold text-green-700 mb-4">Confirmar Compra</h2>

                        <div className="mb-4">
                            <h3 className="font-semibold text-lg mb-2">Paquete:</h3>
                            <div className="bg-gray-100 p-3 rounded-md">
                                <p>
                                    <span className="font-medium">Nombre:</span>{' '}
                                    {currentPaquete.nombre_paquete}
                                </p>
                                <p>
                                    <span className="font-medium">Restaurante:</span>{' '}
                                    {getRestauranteName(currentPaquete.restaurante_id)}
                                </p>
                                <p>
                                    <span className="font-medium">Precio:</span> $
                                    {currentPaquete.precio}
                                </p>
                                <p>
                                    <span className="font-medium">Cantidad:</span>{' '}
                                    {currentPaquete.cantidad || 1}
                                </p>
                                <p>
                                    <hr />
                                    <span className="font-medium">TOTAL:</span> $
                                    {(
                                        (currentPaquete.cantidad || 1) * currentPaquete.precio
                                    ).toFixed(2)}
                                </p>
                            </div>
                        </div>

                        <div className="mb-4">
                            <label className="block font-semibold mb-2">
                                Selecciona una dirección:
                            </label>
                            <select
                                value={selectedDireccion}
                                onChange={(e) => setSelectedDireccion(parseInt(e.target.value))}
                                className="w-full p-2 border rounded-md"
                            >
                                {direcciones.map((dir) => (
                                    <option key={dir.id} value={dir.id}>
                                        {dir.calle} {dir.numero}, {dir.colonia}, {dir.ciudad}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div className="mb-5">
                            <label className="block font-semibold mb-2">
                                Selecciona un método de pago:
                            </label>
                            <select
                                value={selectedPago}
                                onChange={(e) => setSelectedPago(parseInt(e.target.value))}
                                className="w-full p-2 border rounded-md"
                            >
                                {metodoPago.map((mp) => (
                                    <option key={mp.id} value={mp.id}>
                                        {mp.tipo === 'paypal'
                                            ? 'PayPal'
                                            : `Tarjeta terminada en ${mp.numero_tarjeta.slice(-4)}`}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div className="flex justify-end gap-3">
                            <button
                                onClick={() => setShowModal(false)}
                                className="px-4 py-2 bg-gray-500 text-white rounded hover:bg-gray-600"
                                disabled={isProcessing}
                            >
                                Cancelar
                            </button>
                            <button
                                onClick={handleCompra}
                                className="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700"
                                disabled={isProcessing}
                            >
                                {isProcessing ? 'Procesando...' : 'Confirmar Compra'}
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
};

export default Paquetes;
