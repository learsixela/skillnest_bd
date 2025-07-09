-- ===============================
-- TRANSACCIÓN COMPLETA Y VÁLIDA
-- ===============================

START TRANSACTION;

-- Insertar usuario único
INSERT INTO usuarios (id, nombre, email)
VALUES (3, 'María Rivas', 'maria.rivas@gmail.com');

-- Insertar dirección para ese cliente (supongamos cliente_id 3)
INSERT INTO direcciones (id, cliente_id, calle, ciudad)
VALUES (2, 3, 'Pasaje Las Rosas 456', 'Valdivia');

-- Insertar pedido asociado
INSERT INTO pedidos (descripcion, cliente_id)
VALUES ('Membresía anual Skillnest', 3);

-- Confirmar todo
COMMIT;
