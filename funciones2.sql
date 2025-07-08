-- ================================
-- UPDATE
-- ================================

UPDATE clientes
SET correo = 'nuevo.correo@gmail.com'
WHERE id = 1;

UPDATE pedidos
SET descripcion = 'Pedido actualizado de libros escolares'
WHERE id = 1;

-- ================================
-- DELETE
-- ================================

DELETE FROM clientes WHERE id = 8;
DELETE FROM pedidos WHERE descripcion LIKE '%ropa deportiva%';

-- ================================
-- RESTRICCIONES EN UNA TABLA
-- ================================

CREATE TABLE ejemplo_restricciones (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT CHECK (edad >= 18),
    correo VARCHAR(100) UNIQUE
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
