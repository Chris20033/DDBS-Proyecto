import { useEffect, useState } from 'react';
import { MapContainer, TileLayer, Marker, useMapEvents } from 'react-leaflet';
import axios from 'axios';
import { useContext } from "react";
import { AppContext } from "../context/AppContext";
import L from 'leaflet';

// Componente interno para seleccionar la ubicación en el mapa
const LocationMarker = ({ setFormData }) => {
    const [position, setPosition] = useState(null);

    useMapEvents({
        click: async (e) => {
            const { lat, lng } = e.latlng;
            setPosition([lat, lng]);

            try {
                const response = await fetch(`https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=${lat}&lon=${lng}`);
                const data = await response.json();
                const address = data.address || {};

                setFormData(prev => ({
                    ...prev,
                    calle: address.road || '',
                    numero: address.house_number || '',
                    colonia: address.suburb || address.neighbourhood || '',
                    ciudad: address.city || address.town || address.village || '',
                    estado: address.state || '',
                    codigo_postal: address.postcode || '',
                    latitud: lat.toString(),
                    longitud: lng.toString(),
                }));
            } catch (error) {
                console.error('Error en reverse geocoding:', error);
            }
        },
    });

    return position === null ? null : <Marker position={position} />;
};

const Direccion = () => {
    const { userLogin, server, login, direcciones, setDirecciones } = useContext(AppContext);

    useEffect(() => {
        const fetchDirecciones = async () => {
            try {
                const response = await axios.get(`${server}/direccion/${userLogin?.id}`);
                setDirecciones(response.data);
            } catch (error) {
                console.error('Error al cargar direcciones:', error);
            }
        };
        fetchDirecciones();
    }, [userLogin, server, setDirecciones]);
    
    const [formData, setFormData] = useState({
        usuario_id: userLogin?.id,
        calle: '',
        numero: '',
        colonia: '',
        ciudad: '',
        estado: '',
        codigo_postal: '',
        latitud: '0',
        longitud: '0',
    });
    const [errors, setErrors] = useState({});
    const [isSubmitting, setIsSubmitting] = useState(false);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });

        if (errors[name]) {
            setErrors({
                ...errors,
                [name]: '',
            });
        }
    };

    const validateForm = () => {
        const newErrors = {};

        if (!formData.calle.trim()) newErrors.calle = 'La calle es obligatoria';
        if (!formData.numero.trim()) newErrors.numero = 'El número es obligatorio';
        if (!formData.colonia.trim()) newErrors.colonia = 'La colonia es obligatoria';
        if (!formData.ciudad.trim()) newErrors.ciudad = 'La ciudad es obligatoria';
        if (!formData.estado.trim()) newErrors.estado = 'El estado es obligatorio';
        if (!formData.codigo_postal.trim()) {
            newErrors.codigo_postal = 'El código postal es obligatorio';
        } else if (!/^\d{5}$/.test(formData.codigo_postal)) {
            newErrors.codigo_postal = 'El código postal debe tener 5 dígitos';
        }

        return newErrors;
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        setIsSubmitting(true);
        formData.usuario_id = userLogin?.id;

        const validationErrors = validateForm();
        if (Object.keys(validationErrors).length > 0) {
            setErrors(validationErrors);
            setIsSubmitting(false);
            return;
        }

        try {
            const nuevaDireccion = { ...formData };

            await axios.post(`${server}/direccion`, nuevaDireccion);
            alert('Dirección registrada con éxito');

            const updated = await axios.get(`${server}/direccion/${userLogin?.id}`);
            setDirecciones(updated.data);

            setFormData({
                usuario_id: userLogin?.id,
                calle: '',
                numero: '',
                colonia: '',
                ciudad: '',
                estado: '',
                codigo_postal: '',
                latitud: '0',
                longitud: '0',
            });
        } catch (error) {
            console.error('Error al guardar dirección:', error);
            alert('Error al registrar la dirección');
        } finally {
            setIsSubmitting(false);
        }
    };

    const deleteDireccion = (id) => {
        axios.delete(`${server}/direccion/${id}`)
            .then(() => {
                alert('Dirección eliminada con éxito');
                setDirecciones(direcciones.filter((direccion) => direccion.id !== id));
            })
            .catch((error) => {
                console.error('Error al eliminar dirección:', error);
                alert('Error al eliminar la dirección');
            });
    };

    return (
        <div className="w-full max-w-lg mx-auto mt-8 p-6 bg-white rounded-lg shadow-md">
            {login ? (
                <>
                    <h2 className="text-3xl font-semibold text-green-700 mb-6 text-center">
                        Agregar Dirección
                    </h2>

                    <div className="my-6">
                        <h3 className="text-lg font-semibold mb-2 text-green-700">
                            Selecciona tu dirección en el mapa:
                        </h3>
                        <MapContainer className='z-10' center={[21.881866, -102.293879]} zoom={12} style={{ height: "300px", width: "100%" }}>
                            <TileLayer
                                attribution='&copy; OpenStreetMap contributors'
                                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                            />
                            <LocationMarker setFormData={setFormData} />
                        </MapContainer>
                    </div>

                    <form onSubmit={handleSubmit} className="space-y-4">
                        {/* Input Fields */}
                        <h3 className="text-lg font-semibold mb-2 text-green-700">
                            Rellena los datos restantes:
                        </h3>
                        {[
                            { label: 'Calle', name: 'calle' },
                            { label: 'Número', name: 'numero' },
                            { label: 'Colonia', name: 'colonia' },
                            { label: 'Ciudad', name: 'ciudad' },
                            { label: 'Estado', name: 'estado' },
                            { label: 'Código Postal', name: 'codigo_postal', maxLength: 5 }
                        ].map(({ label, name, maxLength }) => (
                            <div key={name}>
                                <label className="block text-gray-700 font-medium mb-1">
                                    {label}
                                </label>
                                <input
                                    type="text"
                                    name={name}
                                    value={formData[name]}
                                    onChange={handleChange}
                                    className={`w-full px-3 py-2 border rounded-md ${
                                        errors[name] ? 'border-red-500' : 'border-gray-300'
                                    }`}
                                    {...(maxLength && { maxLength })}
                                />
                                {errors[name] && (
                                    <p className="text-red-500 text-sm">{errors[name]}</p>
                                )}
                            </div>
                        ))}

                        <div className="mt-6">
                            <button
                                type="submit"
                                disabled={isSubmitting}
                                className="w-full py-3 px-4 bg-green-600 hover:bg-green-700 text-white font-bold rounded-md"
                            >
                                {isSubmitting ? 'Procesando...' : 'Guardar Dirección'}
                            </button>
                        </div>
                    </form>

                    {/* Mostrar direcciones guardadas */}
                    <div className="mt-8 bg-gray-100 p-4 rounded-md">
                        {direcciones.length > 0 ? (
                            direcciones.map((direccion) => (
                                <div
                                    key={direccion.id}
                                    className="mt-4 p-4 bg-green-50 rounded-md border border-green-200"
                                >
                                    <h3 className="text-green-700 font-semibold">
                                        Dirección Guardada:
                                    </h3>
                                    <p>Calle: {direccion.calle} #{direccion.numero}</p>
                                    <p>Colonia: {direccion.colonia}</p>
                                    <p>Ciudad: {direccion.ciudad}</p>
                                    <p>Estado: {direccion.estado}</p>
                                    <p>Código Postal: {direccion.codigo_postal}</p>
                                    <p>Latitud: {direccion.latitud}</p>
                                    <p>Longitud: {direccion.longitud}</p>
                                    <button
                                        className="bg-red-600 hover:bg-red-700 text-white p-2 mt-2 rounded-md"
                                        onClick={() => deleteDireccion(direccion.id)}
                                    >
                                        Eliminar
                                    </button>
                                </div>
                            ))
                        ) : (
                            <p className="text-red-500 mt-4">
                                No tienes ninguna dirección guardada.
                            </p>
                        )}
                    </div>
                </>
            ) : (
                <div className="text-center mt-6">
                    <p className="text-red-500 font-semibold text-lg">
                        Debe iniciar sesión para agregar una dirección.
                    </p>
                </div>
            )}
        </div>
    );
};

export default Direccion;
