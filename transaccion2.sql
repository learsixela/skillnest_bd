-- ===============================
-- TRANSACCIÓN CON ROLLBACK POR ERROR
-- ===============================

START TRANSACTION;

-- Insertar usuario (supongamos que email es UNIQUE)
INSERT INTO usuarios (id, nombre, email)
VALUES (1, 'Juan Pérez', 'juan.perez@gmail.com');

-- Insertar otro usuario con el mismo email (esto causará error)
INSERT INTO usuarios (id, nombre, email)
VALUES (2, 'Clon Juan', 'juan.perez@gmail.com');

-- Al producirse el error, ningún cambio se aplicará si se hace:
ROLLBACK;

