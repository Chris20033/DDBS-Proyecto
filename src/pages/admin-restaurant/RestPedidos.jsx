import { useState, useEffect } from 'react';
import { useContext } from 'react';
import { AppContext } from '../../context/AppContext';
import axios from 'axios';

const RestPedidos = () => {
    const { server, headers, userLogin, selectedRestaurante } = useContext(AppContext);
    const [pedidos, setPedidos] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [filtro, setFiltro] = useState('todos');

    useEffect(() => {
        // Verificar si hay un restaurante seleccionado
        if (!selectedRestaurante) {
            setLoading(false);
            setError('No hay restaurante seleccionado');
            return;
        }

        // Cargar los pedidos del restaurante
        axios
            .get(`${server}/pedidos/restaurante/${selectedRestaurante}`, { headers })
            .then((response) => {
                setPedidos(response.data);
                setLoading(false);
            })
            .catch((error) => {
                console.error('Error al cargar los pedidos:', error);
                setError('Error al cargar los pedidos');
                setLoading(false);
            });
    }, [server, headers, selectedRestaurante]);

    const cambiarEstado = (pedidoId, nuevoEstado) => {
        // Actualizar el estado del pedido en el backend
        axios
            .put(`${server}/pedido/estado/${pedidoId}`, { estatus: nuevoEstado }, { headers })
            .then(() => {
                // Actualizar el estado localmente
                setPedidos(
                    pedidos.map((pedido) =>
                        pedido.id === pedidoId ? { ...pedido, estatus: nuevoEstado } : pedido
                    )
                );
                alert(`Pedido actualizado a estado: ${nuevoEstado}`);
            })
            .catch((error) => {
                console.error('Error al cambiar el estado del pedido:', error);
                alert('Hubo un error al cambiar el estado del pedido');
            });
    };

    // Formatear fecha
    const formatDate = (dateString) => {
        if (!dateString) return 'Fecha no disponible';

        try {
            const options = {
                year: 'numeric',
                month: 'long',
                day: 'numeric',
                hour: '2-digit',
                minute: '2-digit',
            };
            return new Date(dateString).toLocaleDateString('es-ES', options);
        } catch (error) {
            console.error('Error al formatear fecha:', error);
            return 'Fecha inválida';
        }
    };

    // Filtrar pedidos
    const pedidosFiltrados =
        filtro === 'todos'
            ? pedidos
            : pedidos.filter(
                  (pedido) => pedido.estatus?.toLowerCase().trim() === filtro.toLowerCase().trim()
              );

    // Estilo para el estado del pedido
    const getStatusClass = (estatus) => {
        switch (estatus?.toLowerCase()) {
            case 'pendiente':
                return 'bg-yellow-100 text-yellow-800';
            case 'en proceso':
                return 'bg-blue-100 text-blue-800';
            case 'confirmado':
                return 'bg-green-100 text-green-800';
            default:
                return 'bg-gray-100 text-gray-800';
        }
    };

    if (loading) {
        return (
            <div className="container mx-auto p-4 text-center">
                <p className="text-lg">Cargando pedidos...</p>
            </div>
        );
    }

    if (error) {
        return (
            <div className="container mx-auto p-4 text-center">
                <p className="text-lg text-red-500">{error}</p>
            </div>
        );
    }

    if (userLogin.rol !== 'restaurante') {
        return (
            <div className="container mx-auto p-4 text-center">
                <p className="text-xl text-red-500">
                    No tienes permisos para acceder a esta página
                </p>
            </div>
        );
    }

    return (
        <div className="container mx-auto p-4">
            <h2 className="text-xl font-bold mb-4">Administración de Pedidos</h2>

            {/* Filtros de pedidos */}
            <div className="flex justify-center mb-6 overflow-x-auto py-2">
                <div className="inline-flex rounded-md shadow-sm" role="group">
                    <button
                        onClick={() => setFiltro('todos')}
                        className={`py-2 px-4 text-sm font-medium rounded-l-lg ${
                            filtro === 'todos'
                                ? 'bg-green-600 text-white'
                                : 'bg-white text-gray-700 hover:bg-gray-100'
                        }`}
                    >
                        Todos
                    </button>
                    <button
                        onClick={() => setFiltro('pendiente')}
                        className={`py-2 px-4 text-sm font-medium ${
                            filtro === 'pendiente'
                                ? 'bg-green-600 text-white'
                                : 'bg-white text-gray-700 hover:bg-gray-100'
                        }`}
                    >
                        Pendientes
                    </button>
                    <button
                        onClick={() => setFiltro('en proceso')}
                        className={`py-2 px-4 text-sm font-medium ${
                            filtro === 'en proceso'
                                ? 'bg-green-600 text-white'
                                : 'bg-white text-gray-700 hover:bg-gray-100'
                        }`}
                    >
                        En Proceso
                    </button>
                    <button
                        onClick={() => setFiltro('confirmado')}
                        className={`py-2 px-4 text-sm font-medium rounded-r-lg ${
                            filtro === 'confirmado'
                                ? 'bg-green-600 text-white'
                                : 'bg-white text-gray-700 hover:bg-gray-100'
                        }`}
                    >
                        Confirmados
                    </button>
                </div>
            </div>

            {pedidosFiltrados.length === 0 ? (
                <div className="text-center py-10 bg-white rounded-lg shadow-md">
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
                        {filtro === 'todos'
                            ? 'No hay pedidos disponibles.'
                            : `No hay pedidos con el estado "${filtro}".`}
                    </p>
                    {filtro !== 'todos' && (
                        <button
                            onClick={() => setFiltro('todos')}
                            className="mt-4 px-4 py-2 bg-green-600 hover:bg-green-700 text-white rounded-md"
                        >
                            Ver todos los pedidos
                        </button>
                    )}
                </div>
            ) : (
                <div className="overflow-x-auto">
                    <table className="min-w-full bg-white border shadow-md rounded-lg overflow-hidden">
                        <thead className="bg-gray-100">
                            <tr>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    ID
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Dirección
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Fecha
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Tipo Entrega
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Tipo Pago
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Total
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Estado
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Detalles
                                </th>
                                <th className="py-3 px-4 border-b font-semibold text-gray-700">
                                    Acciones
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            {pedidosFiltrados.map((pedido) => (
                                <tr key={pedido.id} className="border-b hover:bg-gray-50">
                                    <td className="py-3 px-4 text-center">{pedido.id}</td>
                                    <td className="py-3 px-4 text-center">
                                        {`${pedido.calle} ${pedido.numero}, ${pedido.colonia}, ${pedido.ciudad}, ${pedido.estado}`}
                                    </td>
                                    <td className="py-3 px-4 text-center">
                                        {formatDate(pedido.fecha_pedido)}
                                    </td>
                                    <td className="py-3 px-4 text-center">{pedido.tipo_entrega}</td>
                                    <td className="py-3 px-4 text-center">{pedido.tipo_pago}</td>
                                    <td className="py-3 px-4 text-center">
                                        ${pedido.total?.toFixed(2)}
                                    </td>
                                    <td className="py-3 px-4 text-center">
                                        <span
                                            className={`px-3 py-1 rounded-full text-sm font-semibold ${getStatusClass(pedido.estatus)}`}
                                        >
                                            {pedido.estatus}
                                        </span>
                                    </td>
                                    <td className="py-3 px-4 text-center">
                                        <button
                                            className="bg-blue-500 text-white px-3 py-1 rounded hover:bg-blue-600"
                                            onClick={() =>
                                                alert(JSON.stringify(pedido.detalles, null, 2))
                                            }
                                        >
                                            Ver detalles
                                        </button>
                                    </td>
                                    <td className="py-3 px-4 text-center">
                                        {pedido.estatus?.toLowerCase() !== 'confirmado' && (
                                            <div className="flex flex-col md:flex-row gap-2 justify-center">
                                                {pedido.estatus?.toLowerCase() !== 'en proceso' && (
                                                    <button
                                                        onClick={() =>
                                                            cambiarEstado(pedido.id, 'En proceso')
                                                        }
                                                        className="bg-blue-500 text-white px-3 py-1 rounded hover:bg-blue-600"
                                                    >
                                                        En Proceso
                                                    </button>
                                                )}
                                                <button
                                                    onClick={() =>
                                                        cambiarEstado(pedido.id, 'Confirmado')
                                                    }
                                                    className="bg-green-500 text-white px-3 py-1 rounded hover:bg-green-600"
                                                >
                                                    Confirmar
                                                </button>
                                            </div>
                                        )}
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    </table>
                </div>
            )}
        </div>
    );
};

export default RestPedidos;
