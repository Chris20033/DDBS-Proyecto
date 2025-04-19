import React, { useState } from "react";

const Paquetes = ({ login, paquetes = [], restaurante = [] }) => {
    const [mensaje, setMensaje] = useState("");

    // Función para formatear la fecha
    const formatDate = (dateString) => {
        const options = { year: "numeric", month: "long", day: "numeric" };
        return new Date(dateString).toLocaleDateString("es-ES", options);
    };

    // Función para encontrar el nombre del restaurante por ID
    const getRestauranteName = (restauranteId) => {
        const rest = restaurante.find((r) => r.id === restauranteId);
        return rest ? rest.nombre : "Restaurante no encontrado";
    };

    // Función para manejar la compra
    const handleCompra = (paqueteId, nombrePaquete) => {
        if (!login) {
            alert("Para comprar este paquete, primero debes iniciar sesión.");
            return;
        }

        setMensaje(
            `¡Gracias por tu compra! El paquete "${nombrePaquete}" ha sido reservado.`
        );
        setTimeout(() => setMensaje(""), 3000);
    };

    return (
        <div className="w-full max-w-6xl mx-auto px-4 py-8">
            {!login ? (
                <div
                    className="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-700 p-4 mb-6"
                    role="alert"
                >
                    <p className="font-bold">Atención</p>
                    <p>Para comprar paquetes debes iniciar sesión primero.</p>
                </div>
            ) : (
                mensaje && (
                    <div
                        className="bg-green-100 border-l-4 border-green-500 text-green-700 p-4 mb-6"
                        role="alert"
                    >
                        <p>{mensaje}</p>
                    </div>
                )
            )}

            <h1 className="text-3xl font-bold text-green-700 mb-6 text-center bg-gray-300 p-2">
                Paquetes Disponibles
            </h1>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 bg-gray-300 p-6">
                {paquetes.map((paquete) => (
                    <div
                        key={paquete.id}
                        className="bg-white rounded-lg shadow-md overflow-hidden"
                    >
                        <div className="relative h-48 bg-gray-200">
                            <img
                                src={paquete.imagen}
                                alt={paquete.nombre_paquete}
                                className="w-full h-full object-cover"
                                onError={(e) => {
                                    e.target.onerror = null;
                                    e.target.src =
                                        "https://placehold.co/300x200/e4ffe7/56a764?text=Imagen+no+disponible";
                                }}
                            />
                            {paquete.stock <= 10 && (
                                <div className="absolute top-2 right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded">
                                    ¡Últimas unidades!
                                </div>
                            )}
                        </div>

                        <div className="p-5">
                            <div className="flex justify-between items-start mb-2">
                                <h2 className="text-xl font-semibold text-green-800">
                                    {paquete.nombre_paquete}
                                </h2>
                                <span className="font-bold text-lg text-green-600">
                                    ${paquete.precio.toFixed(2)}
                                </span>
                            </div>

                            <p className="text-gray-600 mb-3 text-sm">
                                De:
                                <span className="font-medium">
                                    {getRestauranteName(paquete.restaurante_id)}
                                </span>
                            </p>

                            <p className="text-gray-700 mb-4">
                                {paquete.descripcion}
                            </p>

                            <div className="flex justify-between items-center text-sm text-gray-600 mb-4">
                                <p>Stock disponible: {paquete.stock}</p>
                                <p>
                                    Vence:{" "}
                                    {formatDate(paquete.fecha_vencimiento)}
                                </p>
                            </div>

                            <button
                                onClick={() =>
                                    handleCompra(
                                        paquete.id,
                                        paquete.nombre_paquete
                                    )
                                }
                                disabled={!login || paquete.stock <= 0}
                                className={`w-full py-2 px-3 rounded-md text-white font-medium 
                  ${
                      !login || paquete.stock <= 0
                          ? "bg-gray-400 cursor-not-allowed"
                          : "bg-green-600 hover:bg-green-700"
                  }`}
                            >
                                {paquete.stock <= 0
                                    ? "Agotado"
                                    : "Comprar paquete"}
                            </button>
                        </div>
                    </div>
                ))}
            </div>

            {paquetes.length === 0 && (
                <div className="text-center py-10">
                    <p className="text-gray-500 text-lg">
                        No hay paquetes disponibles en este momento.
                    </p>
                </div>
            )}
        </div>
    );
};

export default Paquetes;
