import React, { useState } from "react";
import { useContext } from "react";
import { AppContext } from "../context/AppContext";

const Pedidos = () => {
    const { login, pedidos } = useContext(AppContext);

    // Estado para el filtro de pedidos
    const [filtroEstado, setFiltroEstado] = useState("todos");

    // Formatear fecha
    const formatDate = (dateString) => {
        const options = {
            year: "numeric",
            month: "long",
            day: "numeric",
            hour: "2-digit",
            minute: "2-digit",
        };
        return new Date(dateString).toLocaleDateString("es-ES", options);
    };

    // Filtrar pedidos por estado
    const pedidosFiltrados =
        filtroEstado === "todos"
            ? pedidos
            : pedidos.filter(
                  (pedido) => pedido.estatus?.toLowerCase() === filtroEstado
              );

    // Clase CSS para el estatus del pedido
    const getStatusClass = (estatus) => {
        switch (estatus?.toLowerCase()) {
            case "pendiente":
                return "bg-yellow-100 text-yellow-800";
            case "confirmado":
                return "bg-green-100 text-green-800";
            default:
                return "bg-gray-100 text-gray-800";
        }
    };

    // Si no hay sesión, mostrar mensaje
    if (!login) {
        return (
            <div className="w-full max-w-6xl mx-auto px-4 py-8">
                <div
                    className="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-700 p-4"
                    role="alert"
                >
                    <p className="font-bold">Acceso Restringido</p>
                    <p>Debes iniciar sesión para ver tus pedidos.</p>
                </div>
            </div>
        );
    }

    return (
        <div className="w-full max-w-6xl mx-auto px-2 md:px-4 py-4 md:py-8">
            <h1 className="text-xl md:text-3xl font-bold text-green-700 mb-4 md:mb-6 text-center bg-white rounded-lg shadow-md p-2 md:p-4">
                Mis Pedidos
            </h1>

            {/* Filtros con mejor adaptación a móvil */}
            <div className="flex justify-center mb-4 md:mb-6 overflow-x-auto py-2">
                <div className="inline-flex rounded-md shadow-sm" role="group">
                    <button
                        onClick={() => setFiltroEstado("todos")}
                        className={`py-1 md:py-2 px-2 md:px-4 text-xs md:text-sm font-medium rounded-l-lg ${
                            filtroEstado === "todos"
                                ? "bg-green-600 text-white"
                                : "bg-white text-gray-700 hover:bg-gray-100"
                        }`}
                    >
                        Todos
                    </button>
                    <button
                        onClick={() => setFiltroEstado("pendiente")}
                        className={`py-1 md:py-2 px-2 md:px-4 text-xs md:text-sm font-medium ${
                            filtroEstado === "pendiente"
                                ? "bg-green-600 text-white"
                                : "bg-white text-gray-700 hover:bg-gray-100"
                        }`}
                    >
                        Pendientes
                    </button>
                    <button
                        onClick={() => setFiltroEstado("en proceso")}
                        className={`py-1 md:py-2 px-2 md:px-4 text-xs md:text-sm font-medium ${
                            filtroEstado === "en proceso"
                                ? "bg-green-600 text-white"
                                : "bg-white text-gray-700 hover:bg-gray-100"
                        }`}
                    >
                        En Proceso
                    </button>
                    <button
                        onClick={() => setFiltroEstado("confirmado")}
                        className={`py-1 md:py-2 px-2 md:px-4 text-xs md:text-sm font-medium rounded-r-lg ${
                            filtroEstado === "confirmado"
                                ? "bg-green-600 text-white"
                                : "bg-white text-gray-700 hover:bg-gray-100"
                        }`}
                    >
                        Confirmados
                    </button>
                </div>
            </div>

            {/* Lista de Pedidos */}
            {pedidosFiltrados && pedidosFiltrados.length > 0 ? (
                <div className="space-y-4 md:space-y-6">
                    {pedidosFiltrados.map((pedido, $index) => (
                        <div
                            key={pedido.pedido_id}
                            className="bg-white rounded-lg shadow-md overflow-hidden"
                        >
                            {/* Encabezado del Pedido */}
                            <div className="bg-gray-50 p-4 border-b flex justify-between items-center">
                                <div>
                                    <h3 className="text-lg font-semibold">
                                        Pedido #{$index + 1}
                                    </h3>
                                    <p className="text-gray-600 text-sm">
                                        {formatDate(pedido.fecha_pedido)}
                                    </p>
                                </div>
                                <div>
                                    <span
                                        className={`px-3 py-1 rounded-full text-sm font-semibold ${getStatusClass(pedido.estatus)}`}
                                    >
                                        {pedido.estatus}
                                    </span>
                                </div>
                            </div>

                            {/* Detalles del Pedido */}
                            <div className="p-4">
                                <div className="mb-4">
                                    <h4 className="font-semibold text-gray-700">
                                        Paquete
                                    </h4>
                                    <p className="text-lg">
                                        {pedido.nombre_paquete}
                                    </p>
                                    <p className="text-gray-600 text-sm">
                                        {pedido.descripcion}
                                    </p>
                                </div>

                                <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
                                    <div>
                                        <h4 className="font-semibold text-gray-700">
                                            Cantidad
                                        </h4>
                                        <p>{pedido.cantidad}</p>
                                    </div>
                                    <div>
                                        <h4 className="font-semibold text-gray-700">
                                            Precio unitario
                                        </h4>
                                        <p>
                                            $
                                            {pedido.precio_unitario?.toFixed(2)}
                                        </p>
                                    </div>
                                    <div>
                                        <h4 className="font-semibold text-gray-700">
                                            Total
                                        </h4>
                                        <p className="font-bold">
                                            ${pedido.total?.toFixed(2)}
                                        </p>
                                    </div>
                                </div>

                                <div>
                                    <h4 className="font-semibold text-gray-700">
                                        Tipo de entrega
                                    </h4>
                                    <p>{pedido.tipo_entrega}</p>
                                </div>

                                {/* Acciones según el estado del pedido */}
                                <div className="mt-6 border-t pt-4">
                                    {pedido.estatus?.toLowerCase() ===
                                        "pendiente" && (
                                        <button className="bg-red-500 hover:bg-red-600 text-white py-2 px-4 rounded-md text-sm mr-2">
                                            Cancelar Pedido
                                        </button>
                                    )}

                                    {pedido.estatus?.toLowerCase() ===
                                        "confirmado" && (
                                        <button className="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded-md text-sm">
                                            Ver Detalle
                                        </button>
                                    )}
                                </div>
                            </div>
                        </div>
                    ))}
                </div>
            ) : (
                <div className="text-center py-10 bg-white rounded-lg shadow-md">
                    {pedidos.length === 0 ? (
                        <>
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                className="h-16 w-16 mx-auto text-gray-400"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                            >
                                <path
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth={1}
                                    d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"
                                />
                            </svg>

                            <p className="mt-4 text-lg text-gray-600">
                                No tienes pedidos realizados todavía.
                            </p>
                            <button
                                onClick={() =>
                                    (window.location.href = "/paquetes")
                                }
                                className="mt-4 px-4 py-2 bg-green-600 hover:bg-green-700 text-white rounded-md"
                            >
                                Ver paquetes disponibles
                            </button>
                        </>
                    ) : (
                        <>
                            <p className="text-lg text-gray-600">
                                No tienes pedidos con el estado "{filtroEstado}
                                ".
                            </p>
                            <button
                                onClick={() => setFiltroEstado("todos")}
                                className="mt-4 px-4 py-2 bg-green-600 hover:bg-green-700 text-white rounded-md"
                            >
                                Ver todos los pedidos
                            </button>
                        </>
                    )}
                </div>
            )}
        </div>
    );
};

export default Pedidos;
