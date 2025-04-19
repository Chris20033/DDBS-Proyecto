const Administrador = ({login, userLogin}) => {
  return (

    <>
      {!login || userLogin.rol=="cliente" ? (
        <h2>Error 404</h2>
      ) : (
        <div className="flex flex-col items-center justify-center h-screen bg-gray-100">
          <h1 className="text-2xl font-bold mb-4">Administrador</h1>
          <div className="bg-white shadow-md rounded-lg p-6 w-96">
            <h2 className="text-xl font-semibold mb-2">Panel de Control</h2>
            <p className="text-gray-700 mb-4">Gestión de usuarios y pedidos</p>
            <button className="bg-blue-500 text-white px-4 py-2 rounded">
              Administrar
            </button>
          </div>
        </div>
      )}
    </>
  );
};

export default Administrador;