USE solo_deportes; 
CREATE DATABASE Solo_deportes; -- CREACIÓN BASE DE DATOS --
use Solo_deportes;

-- CREACIÓN E INSERCION DE DATOS EN LAS TABLAS -- 
CREATE TABLE Clientes (
    Id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(30)NOT NULL,
    apellido varchar(40)NOT NULL,
    email VARCHAR(100)NULL,
    provincia varchar(30) default "Buenos_Aires", -- si no se ingresa nada por default se registra automaticamente buenos aires--
    fecha_registro DATE -- almacena fechas en yyyy mm dd--
); 
INSERT INTO Clientes (nombre,apellido,email, provincia, fecha_registro) VALUES
("Santiago", "Dinner", "santiago@gmail.com", "Buenos Aires","2025-03-02"),
("Florencia", "Bossio", "florencia@gmail.com", "Entre Rios",'2025-01-02'),
("Andrea", "Ormeño", "andrea@gmail.com", "Corrientes",'2025-02-05'),
("Wanda", "Plaza", "wanda@gmail.com", "Jujuy",'2025-04-01'),
("Mateo", "Escudero", "mateo@hotmail.com", "Formosa",'2025-04-01'),
("Julia", "Mora", "julia@gmail.com", "Buenos Aires",'2025-04-01'),
("Juan", "Anselmo", "juan@hotmail.com", "Buenos Aires",'2025-03-31'),
("Leonardo", "Ronchetti", "leonardo@gmail.com","Buenos Aires",'2025-04-20'),
("Alicia", "Leston", "alicia@gmail.com", "Mendoza",'2025-02-01');
Select * from Clientes;

CREATE TABLE Productos (
id_producto INT PRIMARY KEY auto_increment NOT NULL,
nombre varchar(50) NOT NULL,
categoría varchar(50) NOT NULL,
precio decimal (10,2) NOT NULL
);
 INSERT INTO Productos (nombre, categoría, precio) VALUES
('Pelota de fútbol', 'Deportes', 12000.00),
('Raqueta de tenis', 'Tenis', 45000.50),
('Botines de fútbol', 'Calzado', 38000.99),
('Mancuernas 5kg', 'Fitness', 15000.75),
('Camiseta de básquet', 'Indumentaria', 22000.00),
('Guantes de boxeo', 'Boxeo', 30000.00),
('Bicicleta de montaña', 'Ciclismo', 150000.00),
('Gorra deportiva', 'Accesorios', 8000.00),
('Reloj deportivo', 'Tecnología', 55000.00);
Select * from Productos;

CREATE TABLE Ventas (
    Id_ventas INT PRIMARY KEY NOT NULL,
    Id_cliente INT NOT NULL,
    Id_producto INT NOT NULL,
    Id_empleado INT NOT NULL,
    fecha DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Id_cliente) REFERENCES Clientes(Id_cliente),
    FOREIGN KEY (Id_producto) REFERENCES Productos(Id_producto),
    FOREIGN KEY (Id_empleado) REFERENCES Empleados1(Id_empleado)  
);

ALTER TABLE Ventas MODIFY Id_ventas INT AUTO_INCREMENT;-- esto es para poder insertar ventas y que el id_ventas salga solo -- 

INSERT INTO Ventas (Id_ventas,Id_cliente, Id_producto, Id_empleado, fecha, monto) VALUES
(01,1, 1, 1000, '2025-04-04', 12000.00),
(02,2, 2, 1001, '2025-04-04', 45000.50),
(03,3, 3, 1002, '2025-04-04', 38000.99),
(04, 4, 4, 1003, '2025-04-04', 15000.75),
(05, 5, 5, 1004, '2025-04-04', 22000.00),
(06, 6, 6, 1005, '2025-04-04', 30000.00),
(07, 7, 7, 1006, '2025-04-04', 150000.00),
(08, 8, 8, 1007, '2025-04-04', 8000.00),
(09, 9, 9, 1008, '2025-04-04', 55000.00);
Select * from ventas;

CREATE TABLE Encuestas (
    Id_encuesta INT PRIMARY KEY auto_increment NOT NULL,
    Id_cliente  INT NOT NULL,
    puntaje INT NOT NULL,
    comentarios TEXT NULL,
    FOREIGN KEY (Id_cliente ) REFERENCES Clientes(Id_cliente ));
    
    INSERT INTO Encuestas (Id_cliente, puntaje, comentarios) VALUES
(1, 5, 'Muy buen producto y servicio.'),
(2, 4, 'Me gustó, pero podría mejorar el envío.'),
(3, 3, 'El producto no era como esperaba.'),
(4, 5, 'Excelente calidad.'),
(5, 2, 'Tardó mucho en llegar.'),
(6, 4, 'Buena compra, lo recomiendo.'),
(7, 5, 'Todo perfecto.'),
(8, 3, 'Regular, esperaba más.'),
(9, 4, 'Buena relación calidad-precio.');
Select * from Encuestas;

CREATE TABLE Empleados1 (
Id_empleado INT PRIMARY KEY NOT NULL,
nombre varchar(50)NOT NULL ,
apellido Varchar(50)NOT NULL,
fecha_de_nacimiento date NOT NULL,
fecha_de_ingreso DATE NOT NULL,
nivel_educativo varchar(50)NOT NULL,
sueldo_bruto DECIMAL (10, 2)NOT NULL,
afiliacion_gremial varchar (50) NOT NULL,
departamento_laboral varchar(80) NOT NULL);

INSERT INTO Empleados1 (Id_empleado, nombre, apellido, fecha_de_nacimiento, fecha_de_ingreso, nivel_educativo, sueldo_bruto, afiliacion_gremial, departamento_laboral) VALUES
(1000,'Pablo', 'Gómez', '1990-05-12', '2020-06-01', 'Secundario', 120000.00, 'Si', 'Ventas'),
(1001, 'Laura', 'Fernández', '1985-03-22', '2018-02-15', 'Universitario', 150000.00, 'Si', 'Administración'),
(1002, 'Diego', 'Rodríguez', '1993-07-14', '2021-09-10', 'Secundario', 110000.00, 'No', 'Depósito'),
(1003, 'Sofía', 'Martínez', '1988-11-30', '2017-05-20', 'Universitario', 160000.00, 'Si', 'Gerencia'),
(1004,'Mariano', 'López', '1995-09-08', '2022-01-05', 'Terciario', 115000.00, 'No', 'Atención al Cliente'),
(1005,'Néstor', 'Cuiule', '1969-09-08', '2006-01-05', 'Terciario', 115000.00, 'si', 'Logistica'),
(1006,'Gabriel', 'Torres', '1994-04-25', '2020-11-30', 'Universitario', 140000.00, 'Si', 'Marketing'),
(1007,'Valeria', 'García', '1987-12-02', '2015-07-22', 'Universitario', 170000.00, 'Si', 'Recursos Humanos'),
(1008,'Ezequiel', 'Pérez', '1996-02-14', '2023-03-18', 'Terciario', 105000.00, 'No', 'Mantenimiento');
Select * from Empleados1;


-- CREACIÓN DE VISTAS --  
CREATE VIEW vista_clientes_top AS 
SELECT                             
    c.Id_cliente,
    c.nombre,
    c.apellido,
    COUNT(v.Id_ventas) AS cantidad_compras,
    SUM(v.monto) AS monto_total
FROM Clientes c
JOIN Ventas v ON c.Id_cliente = v.Id_cliente
GROUP BY c.Id_cliente
ORDER BY cantidad_compras DESC;

CREATE VIEW vista_clientes_activos AS 
SELECT 
    DISTINCT c.Id_cliente,
    c.nombre,
    c.apellido,
    v.fecha AS fecha_ultima_compra
FROM Clientes c
JOIN Ventas v ON c.Id_cliente = v.Id_cliente
WHERE v.fecha >= CURDATE() - INTERVAL 30 DAY;
SELECT * FROM vista_clientes_activos; 

SELECT * 
FROM Ventas 
WHERE fecha >= CURDATE() - INTERVAL 30 DAY
ORDER BY fecha DESC; -- no tengo ninguna compra en los últimos 30 días -- 

INSERT INTO Ventas (Id_ventas, Id_cliente, Id_producto, Id_empleado, fecha, monto) -- inserto ventas para poder crear la vista -- 
VALUES (11, 1, 2, 1001, CURDATE(), 45000.00),
       (12, 1, 3, 1000, '2025-05-02', 45000.00),
	   (13, 1, 4, 1003, '2025-05-20', 45000.00),
	   (14, 1, 5, 1008, '2025-04-30', 45000.00),
       (15, 1, 6, 1007, '2025-05-10', 45000.00),
       (16, 1, 7, 1005, '2025-05-03', 45000.00);
       
UPDATE Ventas SET Id_cliente = 2 WHERE Id_ventas = 11;
UPDATE Ventas SET Id_cliente = 3 WHERE Id_ventas = 12;
UPDATE Ventas SET Id_cliente = 4 WHERE Id_ventas = 13;
UPDATE Ventas SET Id_cliente = 5 WHERE Id_ventas = 14;
UPDATE Ventas SET Id_cliente = 6 WHERE Id_ventas = 15;

SELECT * FROM Ventas; 
SELECT * FROM vista_clientes_activos;

CREATE VIEW vista_ventas_por_categoria AS 
SELECT 
    p.categoría,
    COUNT(v.Id_ventas) AS cantidad_ventas,
    SUM(v.monto) AS total_facturado
FROM Ventas v
JOIN Productos p ON v.Id_producto = p.id_producto
GROUP BY p.categoría;

SELECT * FROM vista_ventas_por_categoria;

CREATE VIEW vista_satisfaccion_de_clientes AS
SELECT 
    c.Id_cliente,
    c.nombre,
    c.apellido,
    AVG(e.puntaje) AS puntaje_promedio,
    COUNT(e.Id_encuesta) AS cantidad_encuestas
FROM Clientes c
JOIN Encuestas e ON c.Id_cliente = e.Id_cliente
GROUP BY c.Id_cliente, c.nombre, c.apellido;
SELECT * FROM vista_satisfaccion_de_clientes ;

UPDATE Encuestas SET Id_cliente = 1 WHERE puntaje = 3;
UPDATE Encuestas SET Id_cliente = 4 WHERE puntaje = 1;
UPDATE Encuestas SET Id_cliente = 9 WHERE puntaje = 4;

CREATE OR REPLACE VIEW vista_descuentos_aplicados AS 
SELECT 
    v.Id_ventas,
    c.nombre AS Nombre_del_cliente,
    c.apellido AS Apellido_del_cliente,
    p.nombre AS Producto,
    v.monto,
    calcular_descuento(v.monto) AS Descuento_Aplicado,
    v.monto - calcular_descuento(v.monto) AS Total_con_descuento,
    v.fecha
FROM Ventas v
JOIN Clientes c ON v.Id_cliente = c.Id_cliente
JOIN Productos p ON v.Id_producto = p.id_producto;
SELECT * FROM vista_descuentos_aplicados;


-- CREACION DE  FUNCIONES-- 
  
DELIMITER //

CREATE FUNCTION calcular_descuento(monto DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    IF monto >= 150000 THEN
        RETURN monto * 0.10;
    ELSEIF monto >= 45000 THEN
        RETURN monto * 0.05; 
    ELSE
        RETURN 0;
    END IF;
END;
//

DELIMITER ;


DELIMITER //

CREATE FUNCTION nivel_satisfaccion(puntaje_promedio DECIMAL(3,1))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR(50);

    IF puntaje_promedio >= 4 THEN
        SET resultado = 'Excelente';
    ELSEIF puntaje_promedio >= 3.5 THEN
        SET resultado = 'Buena';
    ELSEIF puntaje_promedio >= 2.5 THEN
        SET resultado = 'Regular';
    ELSE
        SET resultado = 'Mala';
    END IF;

    RETURN resultado;
END;
//

DELIMITER ;

SELECT nivel_satisfaccion(4.8);  -- Devuelve: Excelente
SELECT nivel_satisfaccion(3.6);  -- Devuelve: Buena
SELECT nivel_satisfaccion(2.8);  -- Devuelve: Regular
SELECT nivel_satisfaccion(1.9);  -- Devuelve: Mala
  
DELIMITER //

CREATE FUNCTION obtener_nombre_completo(Id_empleado INT) 
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
    DECLARE nombre_completo VARCHAR(200);

    SELECT CONCAT(nombre, ' ', apellido)
    INTO nombre_completo 
    FROM empleados1 
    WHERE id_empleado = Id_empleado
    LIMIT 1;

    RETURN nombre_completo;
END;
//

DELIMITER ;

DELIMITER //

CREATE FUNCTION obtener_nombre_completo_de_cliente(Id_cliente INT) 
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
    DECLARE nombre_completo VARCHAR(200);

    SELECT CONCAT(nombre, ' ', apellido)
    INTO nombre_completo 
    FROM Clientes 
    WHERE Id_cliente = Id_cliente
    LIMIT 1;

    RETURN nombre_completo;
END;
//

DELIMITER ;


-- CREACIÓN DE STORED PROCEDURES -- 
DELIMITER //

CREATE PROCEDURE ObtenerVentasPorDia() 
BEGIN
    SELECT 
        fecha,
        COUNT(*) AS cantidad_ventas,
        SUM(monto) AS total_facturado
    FROM ventas
    GROUP BY fecha
    ORDER BY fecha;
END //

DELIMITER ;

select * from Ventas;
CALL ObtenerVentasPorDia();

DELIMITER //

CREATE PROCEDURE RegistrarVenta( -- Este procedimiento me permite registrar las ventas diarias. Involucra tabla de Ventas. 
    IN p_id_cliente INT,
    IN p_id_producto INT,
    IN p_id_empleado INT,
    IN p_fecha DATE,
    IN p_monto DECIMAL(10,2)
)
BEGIN
    INSERT INTO ventas (Id_cliente, Id_producto, Id_empleado, fecha, monto)
    VALUES (p_id_cliente, p_id_producto, p_id_empleado, p_fecha, p_monto);
END //

DELIMITER ;
CALL RegistrarVenta(8, 3, 1000, '2025-05-22', 68000.00); -- Ingreso ventas diarias para probar el procedimiento --
CALL RegistrarVenta(9, 7, 1005, '2025-05-22', 888000);
CALL RegistrarVenta(1, 4, 1003, '2025-05-22', 50000);
select * from ventas;



USE solo_deportes;

 -- Creación de usuarios y permisos en MySQL--

 CREATE USER 'SOLEDAD'@'LOCALHOST' IDENTIFIED BY 'contrasenajunio'; -- ESTO CREA UN USUARIO LLAMADO INVITADO CON ACCESO SOLO DE LECTURA A TODA LA BASE DE DATOS solo_deportes--
 GRANT SELECT ON solo_deportes.* TO 'SOLEDAD'@'LOCALHOST';

-- Se crea el usuario 'pablogomez' de la tabla empleados1
-- (ver tabla empleados donde id = 1001)

CREATE USER 'pablogomez'@'localhost' IDENTIFIED BY 'contrasena123'; -- Se crea el usuario 'pablogomez' de la tabla empleados (ver tabla empleados donde id = 1001)--
GRANT SELECT, INSERT ON solo_deportes.encuestas TO 'pablogomez'@'localhost'; -- Se le otorgan permisos SOLO sobre la tabla 'encuestas'

-- Sofía es la responsable del área de ventas por lo tanto se le da todos los permisos sobre la tabla--
-- Creamos el usuario que representa a Sofía Martínez
CREATE USER 'sofíamartínez'@'localhost' identified by 'contrasena456'; -- Se crea el usuario 'sofíamartínez' de la tabla empleados (ver tabla empleados donde id = 1003)--
GRANT ALL PRIVILEGES ON solo_deportes.ventas TO 'sofíamartínez'@'localhost'; -- se le da todos los accesos a Sofía Martínez sobre la tabla se Ventas para para poder cargar nuevas ventas, corregir errores y consultar información histórica.-- 
-- Cambio a sofía del departamento de Gerencia como la ingresé en principio al Departamento de ventas-- 
UPDATE Empleados1
SET departamento_laboral = 'Ventas'
WHERE id_empleado = 1003;


-- Trigger: 
-- Se crea tabla auxiliar para ver quién hizo la venta-- 
CREATE TABLE log_ventas (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT,
    empleado_nombre VARCHAR(100),
    fecha_registro DATETIME
);

-- TRIGGER --
DELIMITER //
CREATE TRIGGER after_insert_venta
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
    DECLARE nombre_completo VARCHAR(100);
	SELECT CONCAT(nombre, ' ', apellido)  -- Buscar el nombre completo del empleado que hizo la venta
    INTO nombre_completo
    FROM empleados
    WHERE id_empleado = NEW.id_empleado;
	INSERT INTO log_ventas (id_venta, empleado_nombre, fecha_registro)  -- Insertar en log_ventas
    VALUES (NEW.id_ventas, nombre_completo, NOW());
END //
DELIMITER ;

   DROP TRIGGER IF EXISTS after_insert_venta; -- lo elimino porque puse mal el nombre de la tabla empleados. 
   DELIMITER //
-- corregido -- 
CREATE TRIGGER after_insert_venta
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
    DECLARE nombre_completo VARCHAR(100);

    -- Buscar el nombre completo del empleado que hizo la venta
    SELECT CONCAT(nombre, ' ', apellido)
    INTO nombre_completo
    FROM Empleados1
    WHERE Id_empleado = NEW.Id_empleado;

    -- Insertar en log_ventas
    INSERT INTO log_ventas (id_venta, empleado_nombre, fecha_registro)
    VALUES (NEW.id_ventas, nombre_completo, NOW());
END //

DELIMITER ;
   
-- Voy a crear nuevos clientes para poder hacer funcionar mejor el trigger que se crea arriba --

INSERT INTO Clientes (nombre, apellido, email, provincia, fecha_registro) VALUES
('Lucía', 'Fernández', 'lucia.fernandez@gmail.com', 'Buenos Aires', '2025-05-10'),
('Pedro', 'Alonso', 'pedro.alonso@yahoo.com', 'Córdoba', '2025-04-22'),
('Valentina', 'López', 'valentina.lopez@hotmail.com', 'Santa Fe', '2025-03-30'),
('Julián', 'Martínez', 'julian.martinez@gmail.com', 'Mendoza', '2025-06-01'),
('Camila', 'Gómez', 'camila.gomez@outlook.com', 'Tucumán', '2025-05-15'),
('Bruno', 'Sánchez', 'bruno.sanchez@gmail.com', 'Salta', '2025-04-12'),
('Martina', 'Díaz', 'martina.diaz@hotmail.com', 'Entre Ríos', '2025-05-28'),
('Santiago', 'Romero', 'santiago.romero@gmail.com', 'Chubut', '2025-03-18'),
('Emilia', 'Torres', 'emilia.torres@yahoo.com', 'Neuquén', '2025-04-30'),
('Mateo', 'Silva', 'mateo.silva@gmail.com', 'Misiones', '2025-05-05'),
('Renata', 'Acosta', 'renata.acosta@outlook.com', 'Jujuy', '2025-04-09'),
('Thiago', 'Pérez', 'thiago.perez@gmail.com', 'La Pampa', '2025-06-03'),
('Isabela', 'Luna', 'isabela.luna@hotmail.com', 'San Luis', '2025-05-27'),
('Benjamín', 'Ibarra', 'benjamin.ibarra@gmail.com', 'San Juan', '2025-04-20'),
('Mía', 'Ríos', 'mia.rios@gmail.com', 'Catamarca', '2025-05-08'),
('Facundo', 'Molina', 'facundo.molina@yahoo.com', 'Formosa', '2025-03-25'),
('Juana', 'Leiva', 'juana.leiva@gmail.com', 'Corrientes', '2025-05-11'),
('Tomás', 'Castro', 'tomas.castro@gmail.com', 'Río Negro', '2025-04-16'),
('Florencia', 'Moreno', 'florencia.moreno@hotmail.com', 'Santa Cruz', '2025-05-30'),
('Agustín', 'Vega', 'agustin.vega@gmail.com', 'Tierra del Fuego', '2025-06-05');
SELECT * FROM Clientes ORDER BY id_cliente DESC;
select * from Clientes;
ALTER TABLE Ventas MODIFY Id_ventas INT AUTO_INCREMENT PRIMARY KEY; -- hago que el id_ventas sea auto_increment para que el registro nuevo de ventas no me de errores

-- a continuación se insertan nuevas ventas para poder usar el trigger, ver la nueva tabla log_ventas y poder finalmente mostrar en un grafico la cantidad de ventas por empleado--
-- Ventas realizadas por diferentes empleados (id_empleado del 1000 al 1008)

-- para probar trigger y tabla log_ventas-- 
INSERT INTO Ventas (Id_cliente, Id_producto, Id_empleado, fecha, monto)
VALUES 
  (1, 1, 1000, CURDATE(), 89000), 
  (2, 1, 1001, CURDATE(), 94000),
  (3, 2, 1002, CURDATE(), 103000),
  (4, 3, 1003, CURDATE(), 81000),
  (5, 4, 1004, CURDATE(), 99000),
  (6, 5, 1005, CURDATE(), 77000),
  (7, 6, 1006, CURDATE(), 88000),
  (8, 7, 1007, CURDATE(), 95000),
  (9, 8, 1008, CURDATE(), 101000),
  (9, 9, 1001, CURDATE(), 89000),
  (9, 9, 1001, CURDATE(), 91000),
  (9, 9, 1001, CURDATE(), 86000);


-- Verificar los resultados registrados automáticamente en la tabla log_ventas

-- Se crea un S.P que me devuelva un ranking de ventas por empleado, es decir: cuántas ventas hizo cada uno, el total vendido y el promedio. Después simplemente exportás el resultado desde tu cliente MySQL a Excel.--
DELIMITER //

CREATE PROCEDURE reporte_ventas_empleados()
BEGIN
    SELECT 
        e.Id_empleado,
        CONCAT(e.nombre, ' ', e.apellido) AS Nombre_y_Apellido,
        COUNT(v.Id_ventas) AS Cantidad_de_ventas,
        SUM(v.monto) AS Total_vendido,
        ROUND(AVG(v.monto), 2) AS Promedio_de_venta
    FROM ventas v
    JOIN empleados1 e ON v.Id_empleado = e.Id_empleado
    GROUP BY e.Id_empleado, e.nombre, e.apellido
    ORDER BY total_vendido DESC;
END //

DELIMITER ;

-- lo llamamos al SP-- 

CALL reporte_ventas_empleados();
INSERT INTO Ventas (Id_cliente, Id_producto, Id_empleado, fecha, monto)
VALUES 
  (1, 1, 1000, CURDATE(), 150000), 
  (2, 1, 1001, CURDATE(), 200000),
  (3, 2, 1002, CURDATE(), 130000),
  (4, 7, 1003, CURDATE(), 89000),
  (5, 7, 1004, CURDATE(), 145000),
  (6, 2, 1005, CURDATE(), 25000),
  (7, 2, 1006, CURDATE(), 90000),
  (8, 7, 1007, CURDATE(), 30000),
  (9, 1, 1008, CURDATE(), 12500),
  (9, 1, 1008, CURDATE(), 101000),
  (9, 9, 1008, CURDATE(), 50000),
  (9, 9, 1007, CURDATE(), 35000);


