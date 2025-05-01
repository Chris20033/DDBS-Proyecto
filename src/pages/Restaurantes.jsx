import React from "react";
import { useContext } from "react";
import { AppContext } from "../context/AppContext";

const Restaurantes = () => {
    const { restaurante } = useContext(AppContext);

    const renderStars = (rating) => {
        return (
            "★".repeat(Math.floor(rating)) + "☆".repeat(5 - Math.floor(rating))
        );
    };

    return (
        <div className="w-full max-w-6xl mx-auto px-2 md:px-4 py-4 md:py-8">
            <h1 className="text-xl md:text-3xl font-bold text-green-700 mb-4 md:mb-6 text-center bg-gray-300 p-2">
                Restaurantes Disponibles
            </h1>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 bg-gray-300 p-3 md:p-6">
                {restaurante.map((rest) => (
                    <div
                        key={rest.id}
                        className="bg-white rounded-lg shadow-md p-4 md:p-6"
                    >
                        <h2 className="text-lg md:text-xl font-semibold mb-2 text-green-800">
                            {rest.nombre_sucursal}
                        </h2>

                        <div className="mb-3 text-yellow-500">
                            {renderStars(rest.rating_google)}
                            <span className="text-gray-600 ml-1">
                                ({rest.rating_google})
                            </span>
                        </div>

                        <div className="text-gray-700 mb-4 text-sm md:text-base">
                            <p className="mb-1">
                                <span className="font-medium">Dirección:</span>{" "}
                                {rest.direccion}
                            </p>
                            <p>
                                <span className="font-medium">
                                    Coordenadas:
                                </span>{" "}
                                {rest.latitud}, {rest.longitud}
                            </p>
                        </div>

                        <a
                            href={`https://www.google.com/maps/search/?api=1&query=${rest.latitud},${rest.longitud}`}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="text-blue-500 hover:underline inline-block text-sm md:text-base"
                        >
                            Ver ubicación en Google Maps
                        </a>
                    </div>
                ))}
            </div>
        </div>
    );
};

export default Restaurantes;
