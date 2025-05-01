import React from "react";
import { Link, useRouteError } from "react-router-dom";

const Error = () => {
    const error = useRouteError();

    return (
        <div className="w-full max-w-6xl mx-auto px-4 py-20 flex flex-col items-center justify-center text-center">
            <div className="bg-white p-8 rounded-lg shadow-lg border-t-4 border-green-600 max-w-2xl w-full">
                <div className="text-9xl font-bold text-green-700 mb-4">
                    404
                </div>

                <h1 className="text-3xl font-bold text-gray-800 mb-4">
                    ¡Ups! Página no encontrada
                </h1>

                <div className="bg-gray-100 p-4 rounded-md mb-6">
                    <p className="text-gray-600 mb-2">
                        Lo sentimos, la página que estás buscando no existe o ha
                        sido movida.
                    </p>
                    <p className="text-gray-500 text-sm">
                        {error?.statusText ||
                            error?.message ||
                            "Ocurrió un error inesperado"}
                    </p>
                </div>

                <div className="mb-6">
                    <img
                        src="/images/error.png"
                        alt="Error"
                        className="w-40 h-40 mx-auto opacity-80"
                        onError={(e) => {
                            e.target.onerror = null;
                            e.target.src =
                                "https://placehold.co/200x200/e4ffe7/56a764?text=Error+404";
                        }}
                    />
                </div>

                <Link
                    to="/"
                    className="inline-block bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-8 rounded-md transition-colors"
                >
                    Volver al inicio
                </Link>
            </div>
        </div>
    );
};


export default Error;
