
-- funciones.sql

-- BASE DE DATOS: FUNCIONES EN MYSQL

-- FUNCIONES DE TEXTO APLICADAS A CLIENTES Y PEDIDOS

-- CONCAT
SELECT nombre, correo FROM clientes;
SELECT nombre, correo, CONCAT(nombre,' - ', correo) AS cliente_info FROM clientes;

-- CONCAT_WS
SELECT CONCAT_WS(' - ', nombre, correo, id) AS cliente_info FROM clientes;

-- LENGTH: cuenta los caracteres, incluye los espacio
SELECT nombre, LENGTH(nombre) AS largo_nombre FROM clientes;
select id, length(id) from pedidos;

-- TRIM: 
SELECT TRIM('                             Texto                  con espacios   ') AS texto_limpio;

-- UPPER
SELECT UPPER(nombre) AS nombre_mayuscula FROM clientes; 

-- LOWER
SELECT LOWER(correo) AS correo_minuscula FROM clientes;

-- REPLACE
SELECT REPLACE(correo, '.com', '.cl') AS correo_chileno FROM clientes;

-- SUBSTRING
SELECT SUBSTRING(nombre, 1, 3) AS iniciales FROM clientes;
SELECT SUBSTRING(nombre, 2, 5) AS iniciales FROM clientes;

-- FUNCIONES NUMÉRICAS

-- ABS
SELECT ABS(-10) AS valor_absoluto;

-- MOD(modulo o resto de la division)
SELECT id, MOD(id, 2) AS es_par FROM pedidos;

-- RAND: numero aleatorio entre 0 y 1 (min y max)
SELECT RAND() AS numero_aleatorio;
SELECT floor(RAND()*10) + 1 AS numero_aleatorio;


-- ROUND: redondea con cantidad de decimales
SELECT ROUND(3.14159, 2) AS pi_redondeado;

-- SQRT
SELECT SQRT(25) AS raiz_cuadrada;

-- CONSULTA COMBINADA DE FUNCIONES
SELECT 
    nombre,
    CONCAT('ID: ', id) AS id_texto,
    LENGTH(nombre) AS largo,
    UPPER(nombre) AS nombre_mayus,
    REPLACE(correo, '@', ' [at] ') AS correo_protegido
FROM clientes;


-- GROUP BY
SELECT * FROM clientes;
select * from pedidos;

select cliente_id, count(cliente_id) as cantidad_pedidos
from pedidos
GROUP BY cliente_id;

select cliente_id, count(cliente_id) as cantidad_pedidos
from pedidos
GROUP BY cliente_id
having count(cliente_id) > 1
;

/** ORDER BY: por default asc 
*/
SELECT * FROM clientes;
select * from pedidos;

SELECT * FROM clientes
ORDER BY nombre asc -- asc/desc
;

SELECT correo, nombre 
FROM clientes
ORDER BY 2 desc
;


select p.id, p.descripcion, c.nombre
from clientes c 
INNER JOIN pedidos p
ON c.id = p.cliente_id 
ORDER BY p.descripcion asc, 3 asc
;

/**
LIMIT y OFFSET
**/

select p.id, p.descripcion, c.nombre
from clientes c 
INNER JOIN pedidos p
ON c.id = p.cliente_id 
ORDER BY p.descripcion asc, 3 asc
LIMIT 4
;
 -- offset no considera el numero de registro
select p.id, p.descripcion, c.nombre
from clientes c 
INNER JOIN pedidos p
ON c.id = p.cliente_id 
ORDER BY p.descripcion desc, 3 asc
LIMIT 4 OFFSET 3;
;

-- paginacion 
/*SET @pagina=2;
tamaño
offset desde donde
*/















