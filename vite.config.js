import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import tailwindcss from '@tailwindcss/vite';
import { VitePWA } from 'vite-plugin-pwa';


// Configuración de Vite con HTTPS
export default defineConfig({
  server: {
    host: '0.0.0.0',  // Permite que tu aplicación sea accesible desde cualquier dispositivo en tu red local
    port: 5173,        // El puerto que usarás (puedes cambiarlo si es necesario)
  },
  plugins: [
    react(),
    tailwindcss(),
    VitePWA({
      registerType: 'autoUpdate',
      includeAssets: [
        'vite.svg',
        'images/logo.png',
        'images/Fondo.png',
        'images/inicio.webp',
        'images/usr.webp',
      ],
      manifest: {
        name: 'NotWasteTaste',
        short_name: 'NotWasteTaste',
        description: 'Aplicación para la gestión de desperdicios alimentarios',
        theme_color: '#ffffff',
        background_color: '#ffffff',
        icons: [
          {
            src: 'images/logo-64x64.png',
            sizes: '64x64',
            type: 'image/png',
          },
          {
            src: 'images/logo-192x192.png',
            sizes: '192x192',
            type: 'image/png',
          },
          {
            src: 'images/logo-512x512.png',
            sizes: '512x512',
            type: 'image/png',
          },
        ],
      },
      devOptions: {
        enabled: true,  // Activa el service worker en desarrollo
        navigateFallback: '/index.html',
      },
    }),
  ],
});
