import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import tailwindcss from "@tailwindcss/vite";
import { VitePWA } from "vite-plugin-pwa";

// https://vite.dev/config/
export default defineConfig({
    server: {
        host: '0.0.0.0',  // Esto permite que sea accesible desde cualquier dispositivo en la red
        port: 5173,        // El puerto que está utilizando Vite
    },
    plugins: [
        react(),
        tailwindcss(),
        VitePWA({
            registerType: "autoUpdate",
            includeAssets: [
                "vite.svg",
                "images/logo.png",
                "images/Fondo.png",
                "images/inicio.webp",
                "images/usr.webp",
            ],
            manifest: {
                display: "standalone",
                display_override: ["window-controls-overlay"],
                lang: "es-ES",
                name: "NotWasteTaste",
                short_name: "NotWasteTaste",
                description:
                    "Aplicación para la gestión de desperdicios alimentarios",
                theme_color: "#ffffff",
                background_color: "#ffffff",
                icons: [
                    {
                        src: "images/logo-64x64.png",
                        sizes: "64x64",
                        type: "image/png",
                    },
                    {
                        src: "images/logo-192x192.png",
                        sizes: "192x192",
                        type: "image/png",
                    },
                    {
                        src: "images/logo-512x512.png",
                        sizes: "512x512",
                        type: "image/png",
                    },
                ],
            },
            devOptions: {
                enabled: true,  // Activa el service worker también en desarrollo
                navigateFallback: '/index.html', // Necesario para que funcione en SPAs
            },
        }),
    ],
});
