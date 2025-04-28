import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

const Registro = ({ users, setUsers, server }) => {
    const navigate = useNavigate();
    const [formData, setFormData] = useState({
        nombre: "",
        apellido: "",
        correo: "",
        telefono: "",
        contrasena: "",
        confirmarContrasena: "",
    });

    const [errors, setErrors] = useState({});
    const [isSubmitting, setIsSubmitting] = useState(false);

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
                [name]: "",
            });
        }
    };

    const validateForm = () => {
        const newErrors = {};

        // Validación de nombre
        if (!formData.nombre.trim()) {
            newErrors.nombre = "El nombre es obligatorio";
        }

        // Validación de apellido
        if (!formData.apellido.trim()) {
            newErrors.apellido = "El apellido es obligatorio";
        }

        // Validación de correo
        if (!formData.correo.trim()) {
            newErrors.correo = "El correo electrónico es obligatorio";
        } else if (!/\S+@\S+\.\S+/.test(formData.correo)) {
            newErrors.correo = "El formato del correo electrónico es inválido";
        } else if (users.some((user) => user.correo === formData.correo)) {
            newErrors.correo = "Este correo ya está registrado";
        }

        // Validación de teléfono
        if (!formData.telefono.trim()) {
            newErrors.telefono = "El teléfono es obligatorio";
        } else if (!/^\d{10}$/.test(formData.telefono)) {
            newErrors.telefono = "El teléfono debe contener 10 dígitos";
        }

        // Validación de contraseña
        if (!formData.contrasena) {
            newErrors.contrasena = "La contraseña es obligatoria";
        } else if (formData.contrasena.length < 6) {
            newErrors.contrasena =
                "La contraseña debe tener al menos 6 caracteres";
        }

        // Validación de confirmación de contraseña
        if (formData.contrasena !== formData.confirmarContrasena) {
            newErrors.confirmarContrasena = "Las contraseñas no coinciden";
        }

        return newErrors;
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        setIsSubmitting(true);

        const validationErrors = validateForm();

        if (Object.keys(validationErrors).length > 0) {
            setErrors(validationErrors);
            setIsSubmitting(false);
            return;
        }

        // Crear nuevo usuario
        const newUser = {
            nombre: formData.nombre,
            apellido: formData.apellido,
            correo: formData.correo,
            telefono: formData.telefono,
            contrasena: formData.contrasena,
            rol: "cliente", // Por defecto, los nuevos usuarios son clientes
        };

        // Actualizar la lista de usuarios
        setUsers([...users, newUser]);

        // Guardar el nuevo usuario en el servidor (opcional)
        axios
            .post(`${server}/usuarios`, newUser)
            .then((response) => {
                console.log("Usuario registrado:", response.data);
            })
            .catch((error) => {
                console.error("Error al registrar el usuario:", error);
            });

        // Mostrar mensaje de éxito y redireccionar
        alert("¡Registro exitoso! Ahora puedes iniciar sesión.");
        navigate("/inicio");
    };

    return (
        <div className="w-full max-w-lg mx-auto mt-8 p-6 bg-white rounded-lg shadow-md">
            <h2 className="text-3xl font-semibold text-green-700 mb-6 text-center">
                Crear cuenta
            </h2>

            <form onSubmit={handleSubmit} className="space-y-4">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label
                            htmlFor="nombre"
                            className="block text-gray-700 font-medium mb-1"
                        >
                            Nombre
                        </label>
                        <input
                            type="text"
                            id="nombre"
                            name="nombre"
                            value={formData.nombre}
                            onChange={handleChange}
                            className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                                errors.nombre
                                    ? "border-red-500 focus:ring-red-200"
                                    : "border-gray-300 focus:ring-green-200"
                            }`}
                        />
                        {errors.nombre && (
                            <p className="text-red-500 text-sm mt-1">
                                {errors.nombre}
                            </p>
                        )}
                    </div>

                    <div>
                        <label
                            htmlFor="apellido"
                            className="block text-gray-700 font-medium mb-1"
                        >
                            Apellido
                        </label>
                        <input
                            type="text"
                            id="apellido"
                            name="apellido"
                            value={formData.apellido}
                            onChange={handleChange}
                            className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                                errors.apellido
                                    ? "border-red-500 focus:ring-red-200"
                                    : "border-gray-300 focus:ring-green-200"
                            }`}
                        />
                        {errors.apellido && (
                            <p className="text-red-500 text-sm mt-1">
                                {errors.apellido}
                            </p>
                        )}
                    </div>
                </div>

                <div>
                    <label
                        htmlFor="correo"
                        className="block text-gray-700 font-medium mb-1"
                    >
                        Correo electrónico
                    </label>
                    <input
                        type="email"
                        id="correo"
                        name="correo"
                        value={formData.correo}
                        onChange={handleChange}
                        className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                            errors.correo
                                ? "border-red-500 focus:ring-red-200"
                                : "border-gray-300 focus:ring-green-200"
                        }`}
                    />
                    {errors.correo && (
                        <p className="text-red-500 text-sm mt-1">
                            {errors.correo}
                        </p>
                    )}
                </div>

                <div>
                    <label
                        htmlFor="telefono"
                        className="block text-gray-700 font-medium mb-1"
                    >
                        Teléfono
                    </label>
                    <input
                        type="tel"
                        id="telefono"
                        name="telefono"
                        value={formData.telefono}
                        onChange={handleChange}
                        placeholder="10 dígitos"
                        className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                            errors.telefono
                                ? "border-red-500 focus:ring-red-200"
                                : "border-gray-300 focus:ring-green-200"
                        }`}
                    />
                    {errors.telefono && (
                        <p className="text-red-500 text-sm mt-1">
                            {errors.telefono}
                        </p>
                    )}
                </div>

                <div>
                    <label
                        htmlFor="contrasena"
                        className="block text-gray-700 font-medium mb-1"
                    >
                        Contraseña
                    </label>
                    <input
                        type="password"
                        id="contrasena"
                        name="contrasena"
                        value={formData.contrasena}
                        onChange={handleChange}
                        className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                            errors.contrasena
                                ? "border-red-500 focus:ring-red-200"
                                : "border-gray-300 focus:ring-green-200"
                        }`}
                    />
                    {errors.contrasena && (
                        <p className="text-red-500 text-sm mt-1">
                            {errors.contrasena}
                        </p>
                    )}
                </div>

                <div>
                    <label
                        htmlFor="confirmarContrasena"
                        className="block text-gray-700 font-medium mb-1"
                    >
                        Confirmar contraseña
                    </label>
                    <input
                        type="password"
                        id="confirmarContrasena"
                        name="confirmarContrasena"
                        value={formData.confirmarContrasena}
                        onChange={handleChange}
                        className={`w-full px-3 py-2 border rounded-md focus:outline-none focus:ring-2 ${
                            errors.confirmarContrasena
                                ? "border-red-500 focus:ring-red-200"
                                : "border-gray-300 focus:ring-green-200"
                        }`}
                    />
                    {errors.confirmarContrasena && (
                        <p className="text-red-500 text-sm mt-1">
                            {errors.confirmarContrasena}
                        </p>
                    )}
                </div>

                <div className="mt-6">
                    <button
                        type="submit"
                        disabled={isSubmitting}
                        className="w-full py-3 px-4 bg-green-600 hover:bg-green-700 text-white font-bold rounded-md transition-colors duration-200 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-opacity-50"
                    >
                        {isSubmitting ? "Procesando..." : "Registrarse"}
                    </button>
                </div>
            </form>

            <p className="mt-6 text-center text-gray-600">
                ¿Ya tienes una cuenta?{" "}
                <button
                    onClick={() => navigate("/inicio")}
                    className="text-green-600 hover:text-green-800 font-medium"
                >
                    Inicia sesión
                </button>
            </p>
        </div>
    );
};

export default Registro;
