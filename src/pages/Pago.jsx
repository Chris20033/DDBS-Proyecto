import { useState, useEffect } from 'react';
import axios from 'axios';

const Pago = ({ userLogin, server, metodoPago, setMetodoPago, login }) => {
    const [formData, setFormData] = useState({
        usuario_id: userLogin?.id,
        tipo: 'credito', // Default value
        numero_tarjeta: '',
        fecha_expiracion: '',
        codigo_seguridad: '',
    });

    const [errors, setErrors] = useState({});
    const [isSubmitting, setIsSubmitting] = useState(false);

    // Effect to handle PayPal option changes
    useEffect(() => {
        console.log('pagos', metodoPago);
        if (formData.tipo === 'paypal') {
            setFormData((prev) => ({
                ...prev,
                numero_tarjeta: 'N/A',
                codigo_seguridad: 'N/A',
            }));
        } else if (formData.numero_tarjeta === 'N/A') {
            // Reset fields when switching from PayPal to other payment methods
            setFormData((prev) => ({
                ...prev,
                numero_tarjeta: '',
                codigo_seguridad: '',
            }));
        }
    }, [formData.tipo]);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });

        // Limpiar error cuando el usuario comienza a escribir
        if (errors[name]) {
            setErrors({
                ...errors,
                [name]: '',
            });
        }
    };

    const validateForm = () => {
        const newErrors = {};

        if (!formData.tipo) {
            newErrors.tipo = 'Debe seleccionar un tipo de tarjeta';
        }

        if (formData.tipo !== 'paypal') {
            if (!formData.numero_tarjeta) {
                newErrors.numero_tarjeta = 'El número de tarjeta es obligatorio';
            } else if (!/^\d{16}$/.test(formData.numero_tarjeta)) {
                newErrors.numero_tarjeta = 'El número de tarjeta debe tener 16 dígitos';
            }

            if (!formData.codigo_seguridad) {
                newErrors.codigo_seguridad = 'El código de seguridad es obligatorio';
            } else if (!/^\d{3,4}$/.test(formData.codigo_seguridad)) {
                newErrors.codigo_seguridad = 'El código debe tener 3 o 4 dígitos';
            }
        }

        if (!formData.fecha_expiracion) {
            newErrors.fecha_expiracion = 'La fecha de expiración es obligatoria';
        } else if (!/^(0[1-9]|1[0-2])\/\d{2}$/.test(formData.fecha_expiracion)) {
            newErrors.fecha_expiracion = 'Formato inválido. Use MM/AA';
        }

        return newErrors;
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        setIsSubmitting(true);

        // Asignar el ID del usuario actual
        formData.usuario_id = userLogin?.id;

        const validationErrors = validateForm();
        if (Object.keys(validationErrors).length > 0) {
            setErrors(validationErrors);
            setIsSubmitting(false);
            return;
        }

        const newPago = {
            usuario_id: formData.usuario_id,
            tipo: formData.tipo, // Default value
            numero_tarjeta: formData.numero_tarjeta,
            fecha_expiracion: formData.fecha_expiracion,
            codigo_seguridad: formData.codigo_seguridad,
        }

        // Enviar datos de pago al servidor
        axios
            .post(`${server}/pago/`, newPago)
            .then((response) => {
                console.log('Método de pago guardado:', response.data);
                alert('Método de pago registrado con éxito');

                // Actualizar el estado de métodos de pago
                // Obtener métodos de pago del usuario
                axios
                    .get(`${server}/pago/${userLogin?.id}`)
                    .then((response) => {
                        setMetodoPago(response.data);
                        console.log('Métodos de pago:', response.data);
                    })
                    .catch((error) => {
                        console.error('Error fetching métodos de pago:', error);
                    });
                // Resetear formulario
                setFormData({
                    usuario_id: userLogin?.id,
                    tipo: 'credito',
                    numero_tarjeta: '',
                    fecha_expiracion: '',
                    codigo_seguridad: '',
                });
            })
            .catch((error) => {
                console.error('Error al guardar método de pago:', error);
                alert('Error al registrar el método de pago');
            })
            .finally(() => {
                setIsSubmitting(false);
            });

            
    };

    function deletePay (id)  {

        axios.delete(`${server}/pago/${id}`).then((response) => {
            console.log('Método de pago eliminado:', response.data);
            alert('Método de pago eliminado con éxito');
            setMetodoPago(metodoPago.filter((metodo) => metodo.id !== id));
        }).catch((error) => {
            console.error('Error al eliminar método de pago:', error);
            alert('Error al eliminar el método de pago');
        });
    }

    return (
        <div className="w-full max-w-lg mx-auto mt-8 p-6 bg-white rounded-lg shadow-md">
            {login ? (
                <>
                    <h2 className="text-3xl font-semibold text-green-700 mb-6 text-center">
                        Agregar Método de Pago
                    </h2>

                    <form onSubmit={handleSubmit} className="space-y-4">
                        <div>
                            <label className="block text-gray-700 font-medium mb-1">
                                Tipo de pago
                            </label>
                            <select
                                name="tipo"
                                value={formData.tipo}
                                onChange={handleChange}
                                className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                                    errors.tipo
                                        ? 'border-red-500 focus:ring-red-200'
                                        : 'border-gray-300 focus:ring-green-200'
                                }`}
                            >
                                <option value="credito">Tarjeta de Crédito</option>
                                <option value="debito">Tarjeta de Débito</option>
                                <option value="paypal">PayPal</option>
                            </select>
                            {errors.tipo && (
                                <p className="text-red-500 text-sm mt-1">{errors.tipo}</p>
                            )}
                        </div>

                        {formData.tipo !== 'paypal' && (
                            <div>
                                <label className="block text-gray-700 font-medium mb-1">
                                    Número de tarjeta
                                </label>
                                <input
                                    type="text"
                                    name="numero_tarjeta"
                                    value={formData.numero_tarjeta}
                                    onChange={handleChange}
                                    placeholder="1234 5678 9012 3456"
                                    className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                                        errors.numero_tarjeta
                                            ? 'border-red-500 focus:ring-red-200'
                                            : 'border-gray-300 focus:ring-green-200'
                                    }`}
                                    maxLength="16"
                                />
                                {errors.numero_tarjeta && (
                                    <p className="text-red-500 text-sm mt-1">
                                        {errors.numero_tarjeta}
                                    </p>
                                )}
                            </div>
                        )}

                        <div
                            className={`grid ${formData.tipo !== 'paypal' ? 'grid-cols-2' : 'grid-cols-1'} gap-4`}
                        >
                            <div>
                                <label className="block text-gray-700 font-medium mb-1">
                                    Fecha de expiración (MM/AA)
                                </label>
                                <input
                                    type="text"
                                    name="fecha_expiracion"
                                    value={formData.fecha_expiracion}
                                    onChange={handleChange}
                                    placeholder="MM/AA"
                                    className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                                        errors.fecha_expiracion
                                            ? 'border-red-500 focus:ring-red-200'
                                            : 'border-gray-300 focus:ring-green-200'
                                    }`}
                                    maxLength="5"
                                />
                                {errors.fecha_expiracion && (
                                    <p className="text-red-500 text-sm mt-1">
                                        {errors.fecha_expiracion}
                                    </p>
                                )}
                            </div>

                            {formData.tipo !== 'paypal' && (
                                <div>
                                    <label className="block text-gray-700 font-medium mb-1">
                                        Código de seguridad
                                    </label>
                                    <input
                                        type="password"
                                        name="codigo_seguridad"
                                        value={formData.codigo_seguridad}
                                        onChange={handleChange}
                                        placeholder="CVV"
                                        className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                                            errors.codigo_seguridad
                                                ? 'border-red-500 focus:ring-red-200'
                                                : 'border-gray-300 focus:ring-green-200'
                                        }`}
                                        maxLength="4"
                                    />
                                    {errors.codigo_seguridad && (
                                        <p className="text-red-500 text-sm mt-1">
                                            {errors.codigo_seguridad}
                                        </p>
                                    )}
                                </div>
                            )}
                        </div>

                        {formData.tipo === 'paypal' && (
                            <div className="p-4 bg-blue-50 rounded-md border border-blue-200">
                                <p className="text-blue-700">
                                    <i className="fas fa-info-circle mr-2"></i>
                                    Para PayPal solo necesita proporcionar la fecha de expiración.
                                    Los demás campos se completarán automáticamente.
                                </p>
                            </div>
                        )}

                        <div className="mt-6">
                            <button
                                type="submit"
                                disabled={isSubmitting}
                                className="w-full py-3 px-4 bg-green-600 hover:bg-green-700 text-white font-bold rounded-md transition-colors duration-200 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-opacity-50"
                            >
                                {isSubmitting ? 'Procesando...' : 'Guardar Método de Pago'}
                            </button>
                        </div>
                    </form>
                    <div className="mt-8 bg-gray-300 p-4 rounded-md text-green-700 font-semibold">
                    {metodoPago.length > 0 ? (
                        metodoPago.map((metodoPago) => (
                            <div key={metodoPago.id} className="mt-4 p-4 bg-green-50 rounded-md border border-green-200">
                                <h3 className="text-green-700 font-semibold">
                                    Método de Pago Guardado:
                                </h3>
                                <p>Tipo: {metodoPago.tipo}</p>
                                <p>Número de tarjeta: {metodoPago.numero_tarjeta}</p>
                                <p>Fecha de expiración: {metodoPago.fecha_expiracion}</p>
                                <button className='bg-red-700 text-white p-2 mt-4' onClick={() => deletePay(metodoPago.id)}>Eliminar</button>
                            </div>
                        ))
                    ) : (
                        <p className="text-red-500 mt-4">
                            No tienes ningún método de pago guardado.
                        </p>
                    )}
                        
                   
                </div>
                </>
            ) : (
                <div className="text-center mt-6">
                    <p className="text-red-500 font-semibold text-lg">
                        Debe iniciar sesión para agregar un método de pago.
                    </p>
                    
                </div>
            )}
        </div>
    );
};

export default Pago;
