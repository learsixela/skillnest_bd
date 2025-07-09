-- ================================
-- UPDATE ---

-- UPDATE nombre_tabla
-- SET columna1 = nuevo_valor1, columna2 = nuevo_valor2, ...
-- WHERE condicion;

-- ================================
SELECT * FROM clientes;

UPDATE clientes
SET correo = 'camila.soto@gmail.com'
WHERE id = 3;

SELECT * FROM pedidos;

UPDATE pedidos
SET cliente_id = '7'
WHERE id = 11;

UPDATE pedidos
SET id = '14'
WHERE id = 13;

UPDATE clientes
SET id = '14'
WHERE id = 7;

UPDATE pedidos
SET descripcion = 'Arreglo Fachada',
cliente_id = '8'
WHERE id = 12;

/* UPDATE SIN WHERE*/
UPDATE pedidos
SET cliente_id = '1';
-- DANGER

SELECT * FROM pedidos;

UPDATE pedidos
SET descripcion = 'Fachada Arreglo'
-- Where id = 1 or id = 2;
where id in (3,4,13);


-- ================================
-- DELETE

-- DELETE FROM nombre_tabla
-- WHERE condición;
-- ================================

select * FROM clientes WHERE id = 8;
DELETE FROM clientes WHERE id = 8;

SELECT * FROM pedidos WHERE descripcion LIKE '%Fachada Arreglo%';
DELETE FROM pedidos WHERE descripcion LIKE '%Fachada Arreglo%';

INSERT INTO pedidos (id, descripcion, cliente_id) VALUES
(1,'Pedido de libros escolares', 1),
(2,'Compra de laptop', 2),
(3,'Orden de artículos de oficina', 1),
(4,'Paquete de ropa deportiva', 3);

SELECT * FROM pedidos;

delete FROM pedidos;

-- ================================
-- RESTRICCIONES EN UNA TABLA
-- ================================

CREATE TABLE ciudades(
	id INT PRIMARY KEY auto_increment,         -- 2
	nombre VARCHAR(100) NOT NULL -- Osorno
);
INSERT INTO `java0078`.`ciudades` (`nombre`) VALUES ('Santiago');


CREATE TABLE usuarios (
    id INT PRIMARY KEY auto_increment,
    nombre VARCHAR(100) NOT NULL,
    edad INT CHECK (edad >= 18) ,
    correo VARCHAR(100) UNIQUE NOT NULL,
    ciudad_id INT, -- 2
    estado VARCHAR(100) DEFAULT 'INACTIVO',
	foreign key (ciudad_id) references ciudades(id)
);



-- ================================
-- TRANSACCIONES
-- ================================

START TRANSACTION;
UPDATE pedidos SET descripcion = 'Transacción pedido 1' WHERE id = 2;
UPDATE pedidos SET descripcion = 'Transacción pedido 2' WHERE id = 3;
COMMIT;

START TRANSACTION;
UPDATE pedidos SET descripcion = 'Intento fallido' WHERE id = 4;
ROLLBACK;
