-- sentenciasclientes

CREATE TABLE clientes (
    id INT PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    rut VARCHAR(100) UNIQUE
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    descripcion VARCHAR(255) NOT NULL,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Datos para clientes
INSERT INTO clientes (id, nombre, correo) VALUES
(1, 'Ana Torres', 'ana.torres@gmail.com'),
(2, 'Bruno Díaz', 'bruno.diaz@hotmail.com'),
(3, 'Camila Soto', 'camila_soto@yahoo.com'),
(4, 'Daniel Vargas', 'danielv@gmail.com'),
(5, 'Elena Ríos', 'elena.rios@outlook.com'),
(6, 'Felipe Mena', 'felipe.mena@gmail.com'),
(7, 'Gonzalo Herrera', 'gherrera@mail.com'),
(8, 'Hilda Pérez', 'hilda.perez@live.com');

-- Datos para pedidos
INSERT INTO pedidos (descripcion, cliente_id) VALUES
('Pedido de libros escolares', 1),
('Compra de laptop', 2),
('Orden de artículos de oficina', 1),
('Paquete de ropa deportiva', 3),
('Compra de celular', 4),
('Accesorios para mascotas', 3),
('Muebles de cocina', 6),
('Suscripción anual a software', 2),
('Decoración de jardín', 5),
('Mantenimiento de vehículo', 6);
