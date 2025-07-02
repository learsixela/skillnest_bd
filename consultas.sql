-- mysql -v
-- mysql --version
mysql -u root -p -- para acceder a la base de datos desde la terminal

-- en mysql>
show databases; --

create database java0078;-- crear una base de datos
use java0078;-- usar la base de datos

--crear una tabla
CREATE TABLE clientes (
    id INT PRIMARY KEY , -- unico, no se puede repetir, no nulo, auto incrementable
    nombre VARCHAR(100) NOT NULL, -- no nulo, no puede ser vacio
    correo VARCHAR(100) UNIQUE
);

-- 1  Israel  israel@palma.cl

show tables; -- ver las tablas de la base de datos

-- insertar datos en la tabla
insert into clientes (id, nombre, correo) 
values (1,'Mijail','mijail@palma.cl');
insert into clientes (id, nombre, correo) 
values (2,'Julio','julio@palma.cl');
insert into clientes (id, nombre, correo) 
values (3,'Julio','julio@palma.cl');--falla por el correo

-- consultar datos de la tabla
select * from clientes; -- seleccionar todo de la tabla clientes

/** VISTAS **/

CREATE VIEW vista_clientes AS 
SELECT nombre, correo FROM clientes;

CREATE INDEX idx_nombre ON clientes(nombre);

select * from clientes 
where nombre = 'Mijail';

/*FOREIGN KEY. es una PK en otra tabla  */
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT, -- auto incrementable
    descripcion VARCHAR(255) NOT NULL, -- no nulo, no puede ser vacio
    cliente_id INT,--fk
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
-- insertamos datos
insert into pedidos (descripcion, cliente_id)
values('completos',2);
insert into pedidos (descripcion, cliente_id)
values('completos',1);
insert into pedidos (descripcion, cliente_id)
values('sushi',2);

insert into pedidos (descripcion, cliente_id)
values('burger',3);
/*
Cannot add or update a child row: a foreign key constraint fails (`java0078`.`pedidos`, 
CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`))
*/

-- consultar datos de la tabla pedidos
select * from pedidos;