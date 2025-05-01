import { Outlet } from "react-router-dom";
import Header from "../components/Header";
import Aside from "../components/Aside";
import { useContext, useEffect } from "react";
import { AppContext } from "../context/AppContext";

const LayoutPublic = () => {
    const { asideOpen, setAsideOpen } = useContext(AppContext);

    // Cerrar el menú lateral cuando se cambia a una pantalla grande
    useEffect(() => {
        const handleResize = () => {
            if (window.innerWidth > 768 && asideOpen) {
                setAsideOpen(false);
                document.body.classList.remove("menu-open");
            }
        };

        window.addEventListener("resize", handleResize);
        return () => window.removeEventListener("resize", handleResize);
    }, [asideOpen, setAsideOpen]);

    // Cerrar el menú lateral al hacer clic en el overlay
    const handleOverlayClick = () => {
        if (asideOpen) {
            setAsideOpen(false);
            document.body.classList.remove("menu-open");
        }
    };

    return (
        <div
            id="main"
            className="bg-[url(images/Fondo.png)] min-h-screen w-full"
        >
            <Header />
            <Aside />

            {/* Overlay para cerrar el menú en móviles */}
            {asideOpen && (
                <div
                    className="md:hidden fixed inset-0 bg-black bg-opacity-50 z-30"
                    onClick={handleOverlayClick}
                ></div>
            )}

            <div id="content" className="flex flex-col items-center">
                <Outlet />
            </div>

            <footer id="footer">
                <div className="bg-[#4ed89f] h-16 md:h-24 pl-4 pr-4 md:pl-10 md:pr-10 shadow-[0_4px_8px_rgba(0,0,0,0.5)] flex items-center justify-center">
                    <p className="text-center text-white font-bold text-sm md:text-base">
                        Universidad Autonoma de Aguascalientes
                    </p>
                </div>
            </footer>
        </div>
    );
};

export default LayoutPublic;
