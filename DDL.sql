use java0078;

-- 1. Crear la tabla base
CREATE TABLE empleados (
    id INT PRIMARY KEY,                   -- Identificador único
    nombre VARCHAR(100) NOT NULL,         -- Texto de longitud variable
    edad INT,                             -- Número entero
    salario DECIMAL(10,2),                -- Número decimal
    fecha_ingreso DATE                    -- Fecha
);

-- 2. Agregar una columna 'email'
ALTER TABLE empleados
ADD COLUMN email VARCHAR(100);

-- 3. Eliminar la columna 'edad'
ALTER TABLE empleados
DROP COLUMN edad;

-- 4. Renombrar la columna 'nombre' a 'nombre_completo'
ALTER TABLE empleados
CHANGE COLUMN nombre nombre_completo VARCHAR(100);

-- 5. Modificar el tipo de dato de 'salario'
ALTER TABLE empleados
MODIFY COLUMN salario DECIMAL(12,2);

ALTER TABLE empleados
MODIFY COLUMN nombre_completo VARCHAR(50) NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN id INT auto_increment; -- no se necesita volver agregar PK

-- 6. Agregar una columna 'estado' con valor por defecto
ALTER TABLE empleados
ADD COLUMN estado VARCHAR(20) DEFAULT 'activo';

-- 7. Agregar columna 'creado_en' con valor por defecto actual
ALTER TABLE empleados
ADD COLUMN creado_en DATETIME DEFAULT CURRENT_TIMESTAMP; -- con que fecha_hora es insertado UTC?

-- 8. Agregar columna 'departamento_id' y clave foránea FK
ALTER TABLE empleados
ADD COLUMN departamento_id INT;

-- 8.1 Crear tabla 'departamentos'
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Identificador único
    nombre VARCHAR(100) NOT NULL,              -- Nombre del departamento
    ubicacion VARCHAR(100),                    -- Ubicación opcional
    presupuesto DECIMAL(12,2) DEFAULT 0.00     -- Presupuesto asignado
);

-- 8.2 solo realizar si existe la tabla a relacionar
ALTER TABLE empleados
ADD CONSTRAINT fk_departamento
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);--  on delete cascade;

-- 9. Crear un índice sobre la columna 'nombre_completo'
ALTER TABLE empleados
ADD INDEX idx_nombre (nombre_completo);

-- 10. Renombrar la tabla a 'trabajadores'
RENAME TABLE empleados TO trabajadores;

-- 11. insert en ambas tablas
ALTER TABLE departamentos
modify column ubicacion VARCHAR(100) not null;

-- departamentos

INSERT INTO departamentos (nombre, ubicacion)
values ('Informatica','Piso -1'),('Contabilidad','Piso 2'),('Recurso Humanos','Piso 1')
;

INSERT INTO trabajadores (nombre_completo)
values ('Luis Romero'),('Papa Noel'),('Patricia Soto'),('Juan Romero'),('Pepe Lota'),('Mama Noel');


-- 12.  truncate y drop table
