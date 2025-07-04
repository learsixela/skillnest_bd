
-- funciones.sql

-- BASE DE DATOS: FUNCIONES EN MYSQL

-- FUNCIONES DE TEXTO APLICADAS A CLIENTES Y PEDIDOS

-- CONCAT
SELECT CONCAT(nombre, ' - ', correo) AS cliente_info FROM clientes;

-- CONCAT_WS
SELECT CONCAT_WS(' | ', nombre, correo) AS cliente_info FROM clientes;

-- LENGTH
SELECT nombre, LENGTH(nombre) AS largo_nombre FROM clientes;

-- TRIM
SELECT TRIM('   Texto con espacios   ') AS texto_limpio;

-- UPPER
SELECT UPPER(nombre) AS nombre_mayuscula FROM clientes;

-- LOWER
SELECT LOWER(correo) AS correo_minuscula FROM clientes;

-- REPLACE
SELECT REPLACE(correo, '.com', '.cl') AS correo_chileno FROM clientes;

-- SUBSTRING
SELECT SUBSTRING(nombre, 1, 3) AS iniciales FROM clientes;

-- FUNCIONES NUMÉRICAS

-- ABS
SELECT ABS(-10) AS valor_absoluto;

-- MOD
SELECT id, MOD(id, 2) AS es_par FROM pedidos;

-- RAND
SELECT RAND() AS numero_aleatorio;

-- ROUND
SELECT ROUND(3.14159, 2) AS pi_redondeado;

-- SQRT
SELECT SQRT(16) AS raiz_cuadrada;

-- CONSULTA COMBINADA DE FUNCIONES
SELECT 
    nombre,
    CONCAT('ID: ', id) AS id_texto,
    LENGTH(nombre) AS largo,
    UPPER(nombre) AS nombre_mayus,
    REPLACE(correo, '@', ' [at] ') AS correo_protegido
FROM clientes;
