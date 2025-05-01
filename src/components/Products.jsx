import React, { useState } from 'react';

const Products = ({ paquete, getRestauranteName, handleCompra, formatDate, login }) => {


    // Definir estado para la cantidad
    const [cantidad, setCantidad] = useState(1);

    // Manejar cambio de cantidad
    const handleCantidadChange = (e) => {
        const value = parseInt(e.target.value);
        // Asegurar que la cantidad sea al menos 1 y no exceda el stock disponible
        if (!isNaN(value) && value >= 1 && value <= paquete.stock) {
            setCantidad(value);
        } else if (value > paquete.stock) {
            setCantidad(paquete.stock);
        } else {
            setCantidad(1);
        }
    };

    return (
        <div className="bg-white rounded-lg shadow-md overflow-hidden">
            <div className="relative h-48 bg-gray-200">
                <img
                    src={paquete.imagen}
                    alt={paquete.nombre_paquete}
                    className="w-full h-full object-cover"
                    onError={(e) => {
                        e.target.onerror = null;
                        e.target.src =
                            'https://placehold.co/300x200/e4ffe7/56a764?text=Imagen+no+disponible';
                    }}
                />
                {paquete.stock <= 10 && paquete.stock > 0 && (
                    <div className="absolute top-2 right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded">
                        ¡Últimas unidades!
                    </div>
                )}
                {paquete.stock <= 0 && (
                    <div className="absolute inset-0 bg-black bg-opacity-60 flex items-center justify-center">
                        <span className="text-white text-2xl font-bold">AGOTADO</span>
                    </div>
                )}
            </div>

            <div className="p-5">
                <div className="flex justify-between items-start mb-2">
                    <h2 className="text-xl font-semibold text-green-800">
                        {paquete.nombre_paquete}
                    </h2>
                    <span className="font-bold text-lg text-green-600">
                        ${paquete.precio?.toFixed(2)}
                    </span>
                </div>

                <p className="text-gray-600 mb-3 text-sm">
                    De:
                    <span className="font-medium">
                        {' ' + getRestauranteName(paquete.restaurante_id)}
                    </span>
                </p>

                <p className="text-gray-700 mb-4">{paquete.descripcion}</p>

                <div
                    className={`flex justify-between items-center text-sm mb-4 ${paquete.stock <= 3 && paquete.stock > 0 ? 'text-red-600 font-bold' : 'text-gray-600'}`}
                >
                    <p>Stock disponible: {paquete.stock}</p>
                    <p>Vence: {formatDate(paquete.fecha_vencimiento)}</p>
                </div>

                <div className="flex h-12 justify-between w-full gap-2">
                    <input
                        type="number"
                        id="cantidad"
                        placeholder="Cantidad"
                        value={cantidad}
                        onChange={handleCantidadChange}
                        min="1"
                        max={paquete.stock}
                        disabled={!login || paquete.stock <= 0}
                        className={`border rounded-md w-[70%] px-3 ${
                            !login || paquete.stock <= 0
                                ? 'bg-gray-100 border-gray-300'
                                : 'border-green-600'
                        }`}
                    />

                    <button
                        onClick={() => handleCompra({ ...paquete, cantidad })}
                        disabled={!login || paquete.stock <= 0}
                        className={`py-2 px-3 rounded-md text-white font-medium 
                            ${
                                !login || paquete.stock <= 0
                                    ? 'bg-gray-400 cursor-not-allowed'
                                    : 'bg-green-600 hover:bg-green-700'
                            }`}
                    >
                        {paquete.stock <= 0 ? 'Agotado' : 'Comprar'}
                    </button>
                </div>
            </div>
        </div>
    );
};

export default Products;
