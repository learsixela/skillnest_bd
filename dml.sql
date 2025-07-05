/**
Insert
INSERT INTO nombre_tabla(colum1,column2,...) 
VALUES(value1, values2,...);
**/

SELECT * FROM java0078.clientes;

INSERT INTO `java0078`.`clientes` (`id`,`nombre`, `correo`) 
VALUES ('12', 'Alejandra Loren','alejandra@loren.com');

SELECT * FROM java0078.pedidos;

INSERT INTO `java0078`.`pedidos` (`descripcion`) 
VALUES ('Arreglo Estufas');

-- UPDATE `java0078`.`pedidos` SET `cliente_id` = '12' WHERE (`id` = '11');

/**
** desde la terminal de comandos de mysql
**/
1.- conectar a la base de datos
mysql -u root -p
mysql>
2.- preguntar por las bases de datos
mysql>SHOW DATABASES;
3.- seleccionar la base de datos
use java0078;
4.- preguntar por las tablas
mysql>SHOW TABLES;

5.- preguntar por la estructura de una tabla
mysql>DESCRIBE clientes;

6.- insertar un registro
mysql>select * from clientes order by id desc limit 1; -- para ver el último registro
mysql>INSERT INTO clientes (`id`,`nombre`, `correo`)
values (13, 'Patricio Reyes','preyes@skillnest.com');
mysql>select * from clientes order by id desc limit 1;
