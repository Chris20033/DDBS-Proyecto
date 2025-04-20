const Products = ({
    paquete,
    getRestauranteName,
    handleCompra,
    formatDate,
    login,
}) => {
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

                <p className="text-gray-700 mb-4">{paquete.descripcion}</p>

                <div className="flex justify-between items-center text-sm text-gray-600 mb-4">
                    <p>Stock disponible: {paquete.stock}</p>
                    <p>Vence: {formatDate(paquete.fecha_vencimiento)}</p>
                </div>

                <button
                    onClick={() =>
                        handleCompra(paquete.id, paquete.nombre_paquete)
                    }
                    disabled={!login || paquete.stock <= 0}
                    className={`w-full py-2 px-3 rounded-md text-white font-medium 
                  ${
                      !login || paquete.stock <= 0
                          ? "bg-gray-400 cursor-not-allowed"
                          : "bg-green-600 hover:bg-green-700"
                  }`}
                >
                    {paquete.stock <= 0 ? "Agotado" : "Comprar paquete"}
                </button>
            </div>
        </div>
    );
};

export default Products;
