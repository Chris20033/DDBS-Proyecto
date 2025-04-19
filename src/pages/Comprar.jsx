const Comprar = ({login}) => {
  return (
    <>
      {!login ? (<h2>Primero inicia Sesión</h2>): (
        <div className="flex flex-col items-center justify-center h-screen bg-gray-100">
          <h1 className="text-2xl font-bold mb-4">Comprar Paquete</h1>
          <div className="bg-white shadow-md rounded-lg p-6 w-96">
            <h2 className="text-xl font-semibold mb-2">Paquete 1</h2>
            <img src="images/paquete1.jpg" alt="Paquete 1" className="mb-4" />
            <p className="text-gray-700 mb-4">Descripción del paquete 1</p>
            <p className="text-lg font-semibold mb-4">$100</p>
            <button className="bg-blue-500 text-white px-4 py-2 rounded">
              Comprar
            </button>
          </div>
        </div>
      )}
    </>
  );
};

export default Comprar;