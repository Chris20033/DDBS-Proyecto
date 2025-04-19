import React from "react";
import { NavLink } from "react-router-dom";

const Inicio = () => {
    return (
        <div className="w-full max-w-6xl mx-auto px-4 py-8 bg-white">
            {/* Hero Section */}
            <div className="bg-gradient-to-r from-green-100 to-green-200 rounded-lg shadow-lg p-8 mb-12">
                <h1 className="text-4xl font-bold text-green-800 mb-4">
                    ¡Dale una segunda oportunidad a la comida!
                </h1>
                <p className="text-xl text-gray-700">
                    Conectamos restaurantes con consumidores conscientes para
                    reducir el desperdicio alimentario
                </p>
            </div>

            {/* Sobre Nosotros */}
            <section className="mb-12">
                <h2 className="text-3xl font-semibold text-green-700 mb-6">
                    Nuestra Misión
                </h2>
                <div className="flex flex-col md:flex-row gap-8 items-center">
                    <div className="md:w-1/2">
                        <p className="text-lg text-gray-700 mb-4">
                            En nuestra plataforma, conectamos restaurantes que
                            tienen excedentes de alimentos con consumidores que
                            buscan opciones de calidad a precios reducidos.
                        </p>
                        <p className="text-lg text-gray-700">
                            Cada año, un tercio de todos los alimentos
                            producidos acaba desperdiciado. Estamos cambiando
                            esa realidad, una comida a la vez.
                        </p>
                    </div>
                    <div className="md:w-1/2">
                        <img
                            src="/images/inicio.webp"
                            alt="Reducción de desperdicio alimentario"
                            className="rounded-lg shadow-md w-full h-auto"
                        />
                    </div>
                </div>
            </section>

            {/* Cómo Funciona */}
            <section className="mb-12">
                <h2 className="text-3xl font-semibold text-green-700 mb-6">
                    ¿Cómo Funciona?
                </h2>
                <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                    <div className="bg-white p-6 rounded-lg shadow-md">
                        <div className="bg-green-100 w-16 h-16 rounded-full flex items-center justify-center text-2xl font-bold text-green-600 mb-4">
                            1
                        </div>
                        <h3 className="text-xl font-semibold mb-2">
                            Los restaurantes publican
                        </h3>
                        <p className="text-gray-700">
                            Los restaurantes ofrecen paquetes de comida que de
                            otra manera se desperdiciaría, a precios reducidos.
                        </p>
                    </div>

                    <div className="bg-white p-6 rounded-lg shadow-md">
                        <div className="bg-green-100 w-16 h-16 rounded-full flex items-center justify-center text-2xl font-bold text-green-600 mb-4">
                            2
                        </div>
                        <h3 className="text-xl font-semibold mb-2">
                            Tú seleccionas
                        </h3>
                        <p className="text-gray-700">
                            Explora los paquetes disponibles en tu zona y compra
                            lo que más te interese con descuentos de hasta el
                            70%.
                        </p>
                    </div>

                    <div className="bg-white p-6 rounded-lg shadow-md">
                        <div className="bg-green-100 w-16 h-16 rounded-full flex items-center justify-center text-2xl font-bold text-green-600 mb-4">
                            3
                        </div>
                        <h3 className="text-xl font-semibold mb-2">
                            Recoge y disfruta
                        </h3>
                        <p className="text-gray-700">
                            Recoge tu pedido en el horario indicado y disfruta
                            de comida de calidad mientras ayudas al planeta.
                        </p>
                    </div>
                </div>
            </section>

            {/* Beneficios */}
            <section className="mb-12">
                <h2 className="text-3xl font-semibold text-green-700 mb-6">
                    Beneficios
                </h2>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div className="flex items-start">
                        <div className="bg-green-100 p-3 rounded-full mr-4">
                            <svg
                                className="w-6 h-6 text-green-600"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    d="M5 13l4 4L19 7"
                                ></path>
                            </svg>
                        </div>
                        <div>
                            <h3 className="text-xl font-semibold mb-2">
                                Para los consumidores
                            </h3>
                            <p className="text-gray-700">
                                Accede a comida de calidad a precios reducidos
                                mientras contribuyes a un mundo más sostenible.
                            </p>
                        </div>
                    </div>

                    <div className="flex items-start">
                        <div className="bg-green-100 p-3 rounded-full mr-4">
                            <svg
                                className="w-6 h-6 text-green-600"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    d="M5 13l4 4L19 7"
                                ></path>
                            </svg>
                        </div>
                        <div>
                            <h3 className="text-xl font-semibold mb-2">
                                Para los restaurantes
                            </h3>
                            <p className="text-gray-700">
                                Reduce pérdidas, atrae nuevos clientes y muestra
                                tu compromiso con la sostenibilidad.
                            </p>
                        </div>
                    </div>

                    <div className="flex items-start">
                        <div className="bg-green-100 p-3 rounded-full mr-4">
                            <svg
                                className="w-6 h-6 text-green-600"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    d="M5 13l4 4L19 7"
                                ></path>
                            </svg>
                        </div>
                        <div>
                            <h3 className="text-xl font-semibold mb-2">
                                Para el planeta
                            </h3>
                            <p className="text-gray-700">
                                Cada paquete salvado reduce las emisiones de CO2
                                y el consumo de recursos naturales.
                            </p>
                        </div>
                    </div>

                    <div className="flex items-start">
                        <div className="bg-green-100 p-3 rounded-full mr-4">
                            <svg
                                className="w-6 h-6 text-green-600"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    d="M5 13l4 4L19 7"
                                ></path>
                            </svg>
                        </div>
                        <div>
                            <h3 className="text-xl font-semibold mb-2">
                                Para la comunidad
                            </h3>
                            <p className="text-gray-700">
                                Fomentamos una economía circular y promovemos la
                                conciencia sobre el desperdicio alimentario.
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            {/* Call to Action */}
            <section className="text-center">
                <h2 className="text-3xl font-semibold text-green-700 mb-4">
                    ¿Listo para comenzar?
                </h2>
                <p className="text-lg text-gray-700 mb-6">
                    Únete a nuestra comunidad de consumidores y restaurantes
                    comprometidos con reducir el desperdicio alimentario.
                </p>
                <button className="bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-8 rounded-lg shadow-lg transition-colors cursor-pointer" >
                    <NavLink to="/paquetes">Ver paquetes disponibles</NavLink>
                </button>
            </section>
        </div>
    );
};

export default Inicio;
