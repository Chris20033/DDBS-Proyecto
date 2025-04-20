import React, { useState } from "react";
import Products from "../components/Products";

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
                {paquetes.length === 0 ? (
                    <div className="text-center py-10">
                        <p className="text-green-700 text-3xl text-center">
                            No hay paquetes disponibles en este momento.
                        </p>
                    </div>
                ): (<p>Paquetes Disponibles</p>)}
                
            </h1>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 bg-gray-300 p-6">
                {paquetes.map((paquete) => 
                    <Products key={paquete.id}
                        paquete={paquete}
                        formatDate={formatDate}
                        getRestauranteName={getRestauranteName}
                        handleCompra={handleCompra}
                        login={login}
                    />
                )}
            </div>
        </div>
    );
};

export default Paquetes;
