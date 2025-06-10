# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

# Conexiones
Para que este conectado todo entre sí primero haremos lo siguiente:
- Vamos a primero importar la BD en la VM de Linux, el archivo se encuentra en `server/proyecto.sql`
    - Para esto vamos a abrir una terminal en nuestra VM y vamos a ejecutar el siguiente comando para crear la BD:
    ```bash
    mysql -u tu_usuario -p -e "CREATE DATABASE proyecto;"
    ```
    - Después importaremos la BD con el siguiente comando (tienen que poner la ubicacion exacta en donde se encuentra el archivo), se pueden hacer de dos formas:
     ```bash
    cd /ruta/del/archivo/
    mysql -u tu_usuario -p proyecto < proyecto.sql

    ```
    ```bash
    mysql -u tu_usuario -p proyecto < /ruta/completa/a/pryoecto.sql
    ```

- Con esto ya tendremos la BD en la VM, ya solo queda checar la IP de la VM para cambiarla en las siguientes lineas de los siguientes archivos

* En el archivo `server/server.js` vamos a modificar desde la *linea 14*, ya que ahi es donde hace la conexion a la BD de la VM
* En el archivo `/.env` vamos a modificar la variable de entorno, vamos a dejar la estructura `VITE_API_URL=http://IP_DE_LA_MAQUINA_CON_NODEJS`, ya con eso pueden compilar ahora si el `server.js` y el proyecto de *React*

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

Para poder usar tambien el backend, primero vamos a abrir otra terminal y haremos lo siguiente:
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


