const express = require('express');
const https = require('https');
const fs = require('fs');
const mysql = require('mysql');
const cors = require('cors');

// Constantes para imagenes
const multer = require('multer');
const path = require('path');

// Configuración de almacenamiento de imágenes
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/'); // El directorio donde se almacenarán las imágenes
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname));
    }
});

const upload = multer({ storage: storage });

if (!fs.existsSync('uploads/')) {
    fs.mkdirSync('uploads/');
}

const app = express();
const port = 3001;
const IP = '192.168.100.206'

// Middleware
app.use(cors());
app.use(express.json());

// MySQL connection
const db = mysql.createConnection({
  host: IP,
  user: 'lnxarchitect',
  password: 'Sun*+0001',
  database: 'proyecto'
});


// Connect to MySQL
db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

// Routes

//USUARIOS
app.get('/usuarios', (req, res) => {
    db.query('SELECT * FROM USUARIO WHERE activo = 1;', (err, results) => {
        if (err) {
        console.error('Error fetching usuarios:', err);
        res.status(500).send('Error fetching usuarios');
        return;
        }
        res.json(results);
        console.log("Usuarios fetched successfully");
    });
});

app.get('/usuariosrestaurantes', (req, res) => {
    db.query(
        'SELECT u.id, u.nombre, u.apellido, u.correo, u.telefono, u.rol, u.activo FROM USUARIO u LEFT JOIN RESTAURANTE r ON u.id = r.admin_restaurante_id WHERE r.admin_restaurante_id IS NULL and u.rol="restaurante" AND u.activo=1;',
        (err, results) => {
            if (err) {
                console.error('Error fetching usuarios:', err);
                res.status(500).send('Error fetching usuarios');
                return;
            }
            res.json(results);
            console.log("Usuarios restaurantes fetched successfully");
        }
    );
});


app.post('/usuarios', (req, res) => {
    const { nombre, apellido, correo, telefono, contrasena, rol  } = req.body;
    if (!nombre || !correo || !contrasena || !telefono) {
        return res.status(400).send('All fields are required');
    }
    db.query('INSERT INTO USUARIO (nombre, apellido, correo, telefono, contrasena, rol) VALUES (?, ?, ?, ?, ?, ?)', [nombre, apellido, correo, telefono, contrasena, rol], (err, results) => {
        if (err) {
            console.error('Error inserting usuario:', err);
            res.status(500).send('Error inserting usuario');
            return;
        }
        res.status(201).json({ id: results.insertId });
        console.log("Usuario created successfully");
    });
});

app.delete('/usuarios/:id', (req, res) => {
    const id = req.params.id;
    const { activo } = req.body;
    if (!id || activo === undefined) {
        return res.status(400).send('ID and activo status are required');
    }
    db.query('UPDATE USUARIO SET activo = ? WHERE id = ?', [activo, id], (err) => {
        if (err) {
            console.error('Error updating usuario:', err);
            res.status(500).send('Error updating usuario');
            return;
        }
        res.status(200).send('Usuario updated successfully');
        console.log("Usuario updated successfully");
    });
});

//RESTAURANTES
app.get('/restaurantes', (req, res) => {
    db.query('SELECT * FROM RESTAURANTE WHERE activo = 1;', (err, results) => {
        if (err) {
        console.error('Error fetching restaurantes:', err);
        res.status(500).send('Error fetching restaurantes');
        return;
        }
        res.json(results);
        console.log("Restaurantes fetched successfully");
    });
});

app.post('/restaurantes', (req, res) => {
    const caracteres = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    let google_place_id = '';
    for (let i = 0; i < 8; i++) {
        const aleatorio = Math.floor(Math.random() * caracteres.length);
        google_place_id += caracteres.charAt(aleatorio);
    }

    // Obtener los valores del cuerpo de la solicitud
    const { nombre_sucursal, direccion, latitud, longitud, rating_google, admin_restaurante_id } = req.body;

    // Validar que todos los campos necesarios estén presentes
    if (!nombre_sucursal || !direccion || !admin_restaurante_id || !latitud || !longitud || !rating_google) {
        return res.status(400).send('All fields are required');
    }

    // Realizar la consulta SQL para insertar los datos
    db.query(
        'INSERT INTO RESTAURANTE (nombre_sucursal, direccion, latitud, longitud, google_place_id, rating_google, admin_restaurante_id, activo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
        [nombre_sucursal, direccion, latitud, longitud, google_place_id, rating_google, admin_restaurante_id, 1], // Se asigna `1` al campo `activo`
        (err, results) => {
            if (err) {
                console.error('Error inserting restaurante:', err);
                res.status(500).send('Error inserting restaurante');
                return;
            }
            res.status(201).json({ results });
            console.log("Restaurante created successfully");
        }
    );
});


app.get('/restaurantes/:id', (req, res) => {
    const id = req.params.id;
    db.query('SELECT r.* FROM RESTAURANTE r INNER JOIN USUARIO u ON r.admin_restaurante_id = u.id WHERE u.id = ? AND r.activo = 1;', [id], (err, results) => {
        if (err) {
            console.error('Error fetching restaurante:', err);
            res.status(500).send('Error fetching restaurante');
            return;
        }
        if (results.length === 0) {
            return res.status(404).send('Restaurante not found');
        }
        res.json(results);
        console.log("Restaurante fetched successfully");
    }
    );
})

app.delete('/restaurantes/:id', (req, res) => {
    const id = req.params.id;
    const { activo } = req.body;
    if (!id || activo === undefined) {
        return res.status(400).send('ID and activo status are required');
    }
    db.query('UPDATE RESTAURANTE SET activo = ? WHERE id = ?', [activo, id], (err) => {
        if (err) {
            console.error('Error updating restaurante:', err);
            res.status(500).send('Error updating restaurante');
            return;
        }
        res.status(200).send('Restaurante updated successfully');
        console.log("Restaurante updated successfully");
    });
});

//PAQUETES
app.get('/paquetes', (req, res) => {
    // Si includeOutOfStock es true, mostramos todos los paquetes, si no, solo los que tienen stock
    const includeOutOfStock = req.query.includeOutOfStock === 'true';
    
    const query = includeOutOfStock 
        ? 'SELECT * FROM PAQUETE'
        : 'SELECT * FROM PAQUETE WHERE stock > 0 AND fecha_vencimiento >= CURDATE()';
        
    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching paquetes:', err);
            res.status(500).send('Error fetching paquetes');
            return;
        }
        res.json(results);
        console.log("Paquetes fetched successfully");
    });
});

app.get('/paquetes/restaurante/:id', (req, res) => {
    const id = req.params.id;
    db.query('SELECT * FROM PAQUETE WHERE restaurante_id = ? AND activo = 1;', [id], (err, results) => {
        if (err) {
            console.error('Error fetching paquetes for restaurant:', err);
            res.status(500).send('Error fetching paquetes for restaurant');
            return;
        }
        res.json(results);
        console.log("Paquetes for restaurant fetched successfully");
    });
})

app.post('/paquetes', upload.single('imagen'), (req, res) => {
    console.log(req.file); 
    console.log(req.body);
    const { nombre_paquete, descripcion, precio, stock, fecha_vencimiento, restaurante_id } = req.body;

    // Obtener el archivo subido
    const imagenUrl = req.file ? `/uploads/${req.file.filename}` : null; // Guardar la URL de la imagen

    if (!nombre_paquete || !descripcion || !precio || !stock || !fecha_vencimiento || !restaurante_id) {
        return res.status(400).send('Todos los campos son requeridos');
    }

    // Aquí insertaríamos el paquete en la base de datos
    const query = 'INSERT INTO PAQUETE (nombre_paquete, descripcion, imagen, precio, stock, fecha_vencimiento, restaurante_id, activo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
    db.query(query, [nombre_paquete, descripcion, imagenUrl, precio, stock, fecha_vencimiento, restaurante_id, 1], (err, result) => {
        if (err) {
            console.error('Error insertando paquete:', err);
            return res.status(500).send('Error al crear paquete');
        }
        res.status(201).json({ id: result.insertId, imagen_url: imagenUrl });
    });
});

app.delete('/paquetes/:id', (req, res) => {
    const id = req.params.id;
    const { activo } = req.body;
    if (!id || activo === undefined) {
        return res.status(400).send('ID and activo status are required');
    }
    db.query('UPDATE PAQUETE SET activo = ? WHERE id = ?', [activo, id], (err) => {
        if (err) {
            console.error('Error updating paquete:', err);
            res.status(500).send('Error updating paquete');
            return;
        }
        res.status(200).send('Paquete updated successfully');
        console.log("Paquete updated successfully");
    });
}
);

// Actualizar el stock de un paquete
app.put('/paquete/stock/:id', (req, res) => {
    const paqueteId = req.params.id;
    const { cantidad } = req.body;
    
    if (!paqueteId || cantidad === undefined) {
        return res.status(400).send('Se requiere ID del paquete y cantidad');
    }
    
    // Primero verificamos el stock actual
    db.query('SELECT stock FROM PAQUETE WHERE id = ?', [paqueteId], (err, results) => {
        if (err) {
            console.error('Error al verificar stock del paquete:', err);
            return res.status(500).send('Error al verificar stock del paquete');
        }
        
        if (results.length === 0) {
            return res.status(404).send('Paquete no encontrado');
        }
        
        const stockActual = results[0].stock;
        
        // Verificamos que haya suficiente stock
        if (stockActual < cantidad) {
            return res.status(400).json({
                message: 'Stock insuficiente',
                stockDisponible: stockActual
            });
        }
        
        // Actualizamos el stock
        const nuevoStock = stockActual - cantidad;
        
        db.query('UPDATE PAQUETE SET stock = ? WHERE id = ?', [nuevoStock, paqueteId], (updateErr) => {
            if (updateErr) {
                console.error('Error al actualizar stock del paquete:', updateErr);
                return res.status(500).send('Error al actualizar stock del paquete');
            }
            
            res.json({
                message: 'Stock actualizado correctamente',
                id: paqueteId,
                stockAnterior: stockActual,
                stockActual: nuevoStock
            });
            console.log(`Stock del paquete ${paqueteId} actualizado a ${nuevoStock}`);
        });
    });
});

//DIRECCION
app.get('/direccion/:iduser', (req, res) => {
    const iduser = req.params.iduser;
    if (!iduser) {
        return res.status(400).send('User ID is required');
    }
    db.query('SELECT d.id, d.calle, d.numero, d.colonia, d.ciudad, d.estado, d.codigo_postal, d.latitud, d.longitud, d.activo FROM DIRECCION d INNER JOIN USUARIO u ON d.usuario_id = u.id WHERE u.id = ? AND d.activo = 1;', [iduser], (err, results) => {
        if (err) {
        console.error('Error fetching direccion:', err);
        res.status(500).send('Error fetching direccion');
        return;
        }
        res.json(results);
        console.log("Direccion usuario fetched successfully");
    });
});

app.post('/direccion', (req, res) => {
    const { calle, numero, colonia, ciudad, estado, codigo_postal, latitud, longitud, usuario_id } = req.body;
    if (!calle || !numero || !colonia || !ciudad || !estado || !codigo_postal || !latitud || !longitud || !usuario_id) {
        return res.status(400).send('All fields are required');
    }
    db.query('INSERT INTO DIRECCION (calle, numero, colonia, ciudad, estado, codigo_postal, latitud, longitud, usuario_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', [calle, numero, colonia, ciudad, estado, codigo_postal, latitud, longitud, usuario_id], (err, results) => {
        if (err) {
            console.error('Error inserting direccion:', err);
            res.status(500).send('Error inserting direccion');
            return;
        }
        res.status(201).json({ id: results.insertId });
        console.log("Direccion created successfully");
    });
});

app.delete('/direccion/:id', (req, res) => {
    const id = req.params.id;
    const { activo } = req.body;
    if (!id) {
        return res.status(400).send('ID is required');
    }
    db.query('UPDATE DIRECCION SET activo = ? WHERE id = ?', [activo, id], (err) => {
        if (err) {
            console.error('Error deleting direccion:', err);
            res.status(500).send('Error deleting direccion');
            return;
        }
        res.status(200).send('Direccion deleted successfully');
        console.log("Direccion deleted successfully");
    });
});

//METODO DE PAGO
app.get('/pago/:iduser', (req, res) => {
    const iduser = req.params.iduser;
    if (!iduser) {
        return res.status(400).send('User ID is required');
    }
    db.query('SELECT p.id, p.tipo, p.numero_tarjeta, p.fecha_expiracion, p.codigo_seguridad, p.activo FROM METODO_PAGO p INNER JOIN USUARIO u ON p.usuario_id = u.id WHERE u.id = ? AND p.activo = 1;', [iduser], (err, results) => {
        if (err) {
        console.error('Error fetching pago:', err);
        res.status(500).send('Error fetching pago');
        return;
        }
        res.json(results);
        console.log("Pago usuario fetched successfully");
    });
});

app.post('/pago', (req, res) => {
    const { tipo, numero_tarjeta, fecha_expiracion, codigo_seguridad, usuario_id } = req.body;
    if (!tipo || !numero_tarjeta || !fecha_expiracion || !codigo_seguridad || !usuario_id) {
        return res.status(400).send('All fields are required');
    }
    db.query('INSERT INTO METODO_PAGO (tipo, numero_tarjeta, fecha_expiracion, codigo_seguridad, usuario_id) VALUES (?, ?, ?, ?, ?)', [tipo, numero_tarjeta, fecha_expiracion, codigo_seguridad, usuario_id], (err, results) => {
        if (err) {
            console.error('Error inserting pago:', err);
            res.status(500).send('Error inserting pago');
            return;
        }
        res.status(201).json({ id: results.insertId });
        console.log("Pago created successfully");
    });
});

app.delete('/pago/:id', (req, res) => {
    const id = req.params.id;
    const { activo } = req.body;
    if (!id) {
        return res.status(400).send('ID is required');
    }
    db.query('UPDATE METODO_PAGO SET activo = ? WHERE id = ?', [activo, id], (err) => {
        if (err) {
            console.error('Error deleting pago:', err);
            res.status(500).send('Error deleting pago');
            return;
        }
        res.status(200).send('Pago deleted successfully');
        console.log("Pago deleted successfully");
    });
});

//PEDIDOS
app.get('/pedido/:iduser', (req, res) => {
    const iduser = req.params.iduser;
    if (!iduser) {
        return res.status(400).send('User ID is required');
    }
    db.query('SELECT p.id AS pedido_id, p.fecha_pedido, p.estatus, p.total, p.tipo_entrega, pa.nombre_paquete, pa.descripcion, dp.cantidad, dp.precio_unitario FROM PEDIDO p INNER JOIN DETALLE_PEDIDO dp ON p.id = dp.pedido_id INNER JOIN PAQUETE pa ON dp.paquete_id = pa.id WHERE p.usuario_id = ?;', [iduser], (err, results) => {
        if (err) {
        console.error('Error fetching pedidos:', err);
        res.status(500).send('Error fetching pedidos');
        return;
        }
        res.json(results);
        console.log("Pedidos usuario fetched successfully");
    });
});

// Obtener un pedido específico por su ID
app.get('/pedido/detalle/:id', (req, res) => {
    const pedidoId = req.params.id;
    
    if (!pedidoId) {
        return res.status(400).send('Se requiere ID del pedido');
    }
    
    const query = `
        SELECT 
            p.id, p.fecha_pedido, p.estatus, p.total, p.tipo_entrega,
            d.calle, d.numero, d.colonia, d.ciudad, d.estado, d.codigo_postal,
            mp.tipo AS tipo_pago
        FROM PEDIDO p
        JOIN DIRECCION d ON p.direccion_id = d.id
        JOIN METODO_PAGO mp ON p.metodo_pago_id = mp.id
        WHERE p.id = ?
    `;
    
    db.query(query, [pedidoId], (err, resultsPedido) => {
        if (err) {
            console.error('Error al obtener pedido:', err);
            res.status(500).send('Error al obtener pedido');
            return;
        }
        
        if (resultsPedido.length === 0) {
            return res.status(404).send('Pedido no encontrado');
        }
        
        // Obtener los detalles del pedido
        const queryDetalles = `
            SELECT 
                dp.id, dp.cantidad, dp.precio_unitario,
                paq.id AS paquete_id, paq.nombre, paq.descripcion, paq.imagen_url,
                r.nombre_sucursal AS restaurante
            FROM DETALLE_PEDIDO dp
            JOIN PAQUETE paq ON dp.paquete_id = paq.id
            JOIN RESTAURANTE r ON paq.restaurante_id = r.id
            WHERE dp.pedido_id = ?
        `;
        
        db.query(queryDetalles, [pedidoId], (errDetalles, resultsDetalles) => {
            if (errDetalles) {
                console.error('Error al obtener detalles del pedido:', errDetalles);
                res.status(500).send('Error al obtener detalles del pedido');
                return;
            }
            
            // Combinar datos de pedido y detalles
            const pedidoCompleto = {
                ...resultsPedido[0],
                detalles: resultsDetalles
            };
            
            res.json(pedidoCompleto);
            console.log("Pedido completo obtenido exitosamente");
        });
    });
});

// Obtener todos los pedidos de un usuario con sus detalles completos
app.get('/pedidos/usuario/:userId', (req, res) => {
    const userId = req.params.userId;
    
    if (!userId) {
        return res.status(400).send('Se requiere ID del usuario');
    }
    
    const query = `
        SELECT 
            p.id, p.fecha_pedido, p.estatus, p.total, p.tipo_entrega,
            d.calle, d.numero, d.colonia, d.ciudad, d.estado, d.codigo_postal,
            mp.tipo AS tipo_pago
        FROM PEDIDO p
        JOIN DIRECCION d ON p.direccion_id = d.id
        JOIN METODO_PAGO mp ON p.metodo_pago_id = mp.id
        WHERE p.usuario_id = ?
        ORDER BY p.fecha_pedido DESC
    `;
    
    db.query(query, [userId], (err, pedidosResults) => {
        if (err) {
            console.error('Error al obtener pedidos del usuario:', err);
            res.status(500).send('Error al obtener pedidos del usuario');
            return;
        }
        
        // Si no hay pedidos, devolver array vacío
        if (pedidosResults.length === 0) {
            return res.json([]);
        }
        
        // Contador para mantener el seguimiento de pedidos procesados
        let pedidosProcesados = 0;
        const pedidosCompletos = [];
        
        // Para cada pedido, obtener sus detalles
        pedidosResults.forEach(pedido => {
            const queryDetalles = `
                SELECT 
                    dp.id, dp.cantidad, dp.precio_unitario,
                    paq.id AS paquete_id, paq.nombre, paq.descripcion, paq.imagen_url,
                    r.nombre_sucursal AS restaurante
                FROM DETALLE_PEDIDO dp
                JOIN PAQUETE paq ON dp.paquete_id = paq.id
                JOIN RESTAURANTE r ON paq.restaurante_id = r.id
                WHERE dp.pedido_id = ?
            `;
            
            db.query(queryDetalles, [pedido.id], (errDetalles, detallesResults) => {
                pedidosProcesados++;
                
                if (errDetalles) {
                    console.error(`Error al obtener detalles del pedido ${pedido.id}:`, errDetalles);
                } else {
                    // Añadir detalles al pedido correspondiente
                    pedidosCompletos.push({
                        ...pedido,
                        detalles: detallesResults
                    });
                }
                
                // Cuando todos los pedidos han sido procesados, devolver resultado
                if (pedidosProcesados === pedidosResults.length) {
                    res.json(pedidosCompletos);
                    console.log("Pedidos del usuario obtenidos exitosamente");
                }
            });
        });
    });
});

app.get('/pedidos/restaurante/:restauranteId', (req, res) => {
    const restauranteId = req.params.restauranteId;

    if (!restauranteId) {
        return res.status(400).send('Se requiere ID del restaurante');
    }

    // Consulta principal: Obtener los pedidos asociados a los paquetes del restaurante
    const query = `
        SELECT 
            p.id, p.fecha_pedido, p.estatus, p.total, p.tipo_entrega,
            d.calle, d.numero, d.colonia, d.ciudad, d.estado, d.codigo_postal,
            mp.tipo AS tipo_pago, p.tipo_entrega
        FROM PEDIDO p
        JOIN DIRECCION d ON p.direccion_id = d.id
        JOIN METODO_PAGO mp ON p.metodo_pago_id = mp.id
        JOIN DETALLE_PEDIDO dp ON p.id = dp.pedido_id
        JOIN PAQUETE paq ON dp.paquete_id = paq.id
        WHERE paq.restaurante_id = ?  -- Filtrar por restaurante a través de la tabla PAQUETE
        ORDER BY p.fecha_pedido DESC
    `;

    db.query(query, [restauranteId], (err, pedidosResults) => {
        if (err) {
            console.error('Error al obtener pedidos del restaurante:', err);
            res.status(500).send('Error al obtener pedidos del restaurante');
            return;
        }

        // Si no hay pedidos, devolver array vacío
        if (pedidosResults.length === 0) {
            return res.json([]);
        }

        // Contador para mantener el seguimiento de pedidos procesados
        let pedidosProcesados = 0;
        const pedidosCompletos = [];

        // Para cada pedido, obtener sus detalles
        pedidosResults.forEach((pedido) => {
            const queryDetalles = `
                SELECT 
                    dp.id, dp.cantidad, dp.precio_unitario,
                    paq.id AS paquete_id, paq.nombre_paquete, paq.descripcion, paq.imagen,
                    r.nombre_sucursal AS restaurante
                FROM DETALLE_PEDIDO dp
                JOIN PAQUETE paq ON dp.paquete_id = paq.id
                JOIN RESTAURANTE r ON paq.restaurante_id = r.id
                WHERE dp.pedido_id = ?
            `;

            db.query(queryDetalles, [pedido.id], (errDetalles, detallesResults) => {
                pedidosProcesados++;

                if (errDetalles) {
                    console.error(`Error al obtener detalles del pedido ${pedido.id}:`, errDetalles);
                } else {
                    // Añadir detalles al pedido correspondiente
                    pedidosCompletos.push({
                        ...pedido,
                        detalles: detallesResults,
                    });
                }

                // Cuando todos los pedidos han sido procesados, devolver resultado
                if (pedidosProcesados === pedidosResults.length) {
                    res.json(pedidosCompletos);
                    console.log('Pedidos del restaurante obtenidos exitosamente');
                }
            });
        });
    });
});



// Crear un nuevo pedido
app.post('/pedido', (req, res) => {

    // Extraer datos del pedido
    const { usuario_id, direccion_id, metodo_pago_id, tipo_entrega, total, estatus } = req.body;
    
    // Validar datos
    if (!usuario_id || !direccion_id || !metodo_pago_id || !total) {
        return res.status(400).send('Se requieren todos los campos obligatorios para el pedido');
    }
        const datePart = new Date().toLocaleDateString();
        const timePart = new Date().toLocaleTimeString().slice(0, 8);
        const [day, month, year] = datePart.split('/');
        const fechaPedido = `${year}-${month}-${day} ${timePart}`;
    
    
    const estadoPedido = estatus || 'En proceso';
    const tipoEntregaPedido = tipo_entrega || 'domicilio';
    
    // Crear pedido
    db.query(
        'INSERT INTO PEDIDO (usuario_id, fecha_pedido, direccion_id, metodo_pago_id, tipo_entrega, total, estatus) VALUES (?, ?, ?, ?, ?, ?, ?)',
        [usuario_id, fechaPedido, direccion_id, metodo_pago_id, tipoEntregaPedido, total, estadoPedido],
        (err, results) => {
            if (err) {
                console.error('Error al crear pedido:', err);
                res.status(500).send('Error al crear pedido');
                return;
            }
            
            // Devolver ID del pedido creado
            res.status(201).json({
                message: 'Pedido creado exitosamente',
                id: results.insertId,
                fecha: fechaPedido
            });
            console.log("Pedido created successfully with ID:", results.insertId);
        }
    );
});

app.put('/pedido/estado/:id', (req, res) => {
    const pedidoId = req.params.id;
    const { estatus } = req.body;

    // Verificar que el estado sea válido
    if (!estatus || !['Pendiente', 'En proceso', 'Confirmado'].includes(estatus)) {
        return res.status(400).send('Estado inválido');
    }

    // Actualizar el estado del pedido
    const query = 'UPDATE PEDIDO SET estatus = ? WHERE id = ?';
    db.query(query, [estatus, pedidoId], (err, result) => {
        if (err) {
            console.error('Error al actualizar el estado del pedido:', err);
            return res.status(500).send('Error al actualizar el estado del pedido');
        }

        if (result.affectedRows === 0) {
            return res.status(404).send('Pedido no encontrado');
        }

        res.status(200).send('Estado del pedido actualizado');
    });
});


//DETALLE DE PEDIDO
// Crear detalle de pedido
app.post('/detalle-pedido', (req, res) => {
    // Extraer datos del detalle
    const { pedido_id, paquete_id, cantidad, precio_unitario } = req.body;
    
    // Validar datos
    if (!pedido_id || !paquete_id || !cantidad || !precio_unitario) {
        return res.status(400).send('Se requieren todos los campos obligatorios para el detalle del pedido');
    }
    
    // Crear detalle
    db.query(
        'INSERT INTO DETALLE_PEDIDO (pedido_id, paquete_id, cantidad, precio_unitario) VALUES (?, ?, ?, ?)',
        [pedido_id, paquete_id, cantidad, precio_unitario],
        (err, results) => {
            if (err) {
                console.error('Error al crear detalle de pedido:', err);
                res.status(500).send('Error al crear detalle de pedido');
                return;
            }
            
            // Devolver ID del detalle creado
            res.status(201).json({
                message: 'Detalle de pedido creado exitosamente',
                id: results.insertId
            });
            console.log("Detalle de pedido created successfully");
        }
    );
});

app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

app.listen(port, '0.0.0.0', () => {
  console.log(`Servidor corriendo en https://${IP}:${port}`);
});

