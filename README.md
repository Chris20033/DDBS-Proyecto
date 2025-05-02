# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

# Comandos a usar para su funcionamiento

- Usar este comando para instalar todas las dependencias
```bash
npm install

```
- Después para correr el programa usar este comando
```bash
npm run dev

```

- En dado caso que no cargue todas las dependencias hacer estos comandos
```bash
npm install react-router-dom
npm install -D tailwindcss postcss autoprefixer
npm install -D prettier prettier-plugin-tailwindcss
npm install axios
npm install react-leaflet leaflet
npm install leaflet-defaulticon-compatibility

```

# Backend (NodeJS)

Para poder usar tambien el backend vamos a hacer lo siguiente:
- Primero entraremos a la carpeta `/server` con el comando:
```bash
cd server
```
- Estando dentro de la carpeta, instalaremos las dependencias necesarias con el siguiente comando
```bash
npm install
```
- Una vez instaladas las dependencias lo compilaremos con el siguiente comando:
```bash
npm start
```
Si todo va bien deberia aparecer el mensaje en terminal: `Server running at http://localhost:3001`