
-- transacciones.sql

-- ===============================
-- TRANSACCIONES EN MYSQL
-- ===============================

-- CONTEXTO: Existen las tablas clientes, pedidos, usuarios, direcciones

-- Iniciar una transacción que inserta un cliente, su dirección y un pedido
START TRANSACTION;

-- Insertar cliente
INSERT INTO clientes (id, nombre, correo)
VALUES (1, 'Andres Julio', 'julio.andres@gmail.com');

-- Insertar pedido del cliente
INSERT INTO pedidos (descripcion, cliente_id)
VALUES ('Compra inicial de libros', 9);

-- Insertar dirección 
INSERT INTO direcciones (calle, ciudad)
VALUES ('Los Álamos 123', 'Temuco');

-- Insertar usuario con direccion
INSERT INTO usuarios ( nombre, correo, ciudad_id)
VALUES ( 'Julio Andres', 'julio.andres@gmail.com',1);

-- Confirmar los cambios
COMMIT;

