const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = 3001;

// Middleware
app.use(cors());
app.use(express.json());

// MySQL connection
const db = mysql.createConnection({
  host: '192.168.0.185',
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
    db.query('SELECT * FROM USUARIO', (err, results) => {
        if (err) {
        console.error('Error fetching usuarios:', err);
        res.status(500).send('Error fetching usuarios');
        return;
        }
        res.json(results);
        console.log("Usuarios fetched successfully");
    });
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
    db.query('SELECT * FROM RESTAURANTE', (err, results) => {
        if (err) {
        console.error('Error fetching restaurantes:', err);
        res.status(500).send('Error fetching restaurantes');
        return;
        }
        res.json(results);
        console.log("Restaurantes fetched successfully");
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
    db.query('SELECT d.id, d.calle, d.numero, d.colonia, d.ciudad, d.estado, d.codigo_postal, d.latitud, d.longitud FROM DIRECCION d INNER JOIN USUARIO u ON d.usuario_id = u.id WHERE u.id = ?;', [iduser], (err, results) => {
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
    if (!id) {
        return res.status(400).send('ID is required');
    }
    db.query('DELETE FROM DIRECCION WHERE id = ?', [id], (err) => {
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
    db.query('SELECT p.id, p.tipo, p.numero_tarjeta, p.fecha_expiracion, p.codigo_seguridad FROM METODO_PAGO p INNER JOIN USUARIO u ON p.usuario_id = u.id WHERE u.id = ?;', [iduser], (err, results) => {
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
    if (!id) {
        return res.status(400).send('ID is required');
    }
    db.query('DELETE FROM METODO_PAGO WHERE id = ?', [id], (err) => {
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

// Crear un nuevo pedido
app.post('/pedido', (req, res) => {
    // Extraer datos del pedido
    const { usuario_id, fecha_pedido, direccion_id, metodo_pago_id, tipo_entrega, total, estatus } = req.body;
    
    // Validar datos
    if (!usuario_id || !direccion_id || !metodo_pago_id || !total) {
        return res.status(400).send('Se requieren todos los campos obligatorios para el pedido');
    }
    
    // Formatear fecha con zona horaria de México Central (UTC-6)
    let fechaPedido;
    if (fecha_pedido) {
        // Si proporcionan una fecha, usarla
        fechaPedido = fecha_pedido;
    } else {
        // Crear fecha actual en México Central (UTC-6)
        const now = new Date();
        
        // Método correcto para obtener fecha local de México:
        // 1. Crear objeto de fecha en formato ISO con ajuste para México
        const mexicoTime = new Date(now.toLocaleString("en-US", {timeZone: "America/Mexico_City"}));
        fechaPedido = mexicoTime.toISOString().slice(0, 19).replace('T', ' ');
    }
    
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

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
