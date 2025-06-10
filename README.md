## Escudero-Proyecto-Final:
# Solo_deportes

## Introducción

Este proyecto presenta el desarrollo de una base de datos relacional para "Solo Deportes", una cadena de tiendas deportivas que comercializa calzado, indumentaria y artículos deportivos.

##  Objetivos

- Crear una base de datos basada en un modelo de negocio real.
- Desarrollar funciones, procedimientos y triggers para mantener la integridad y automatización.
- Generar consultas para obtener informes útiles.
- Visualizar datos con gráficos e informes exportables.

##  Modelo de negocio

La empresa necesita:
- Analizar ventas mensuales.
- Medir la satisfacción de sus clientes.
- Evaluar la productividad de sus empleados.
- Mejorar la toma de decisiones con información actualizada.

## Descripción de la Base de Datos 

##  Tablas

- Clientes:
Clave primaria: id_cliente (identificador único del cliente).
Registra el nombre, apellido, email, provincia y fecha de registro
No tiene claves foráneas.

- Empleados1:
Clave primaria: Id_empliado (identificador único del empleado).
Registra el nombre, apellido, nacimiento, fecha de ingreso, nivel educativo, sueldo, afiliación gremial y departamento laboral.
No tiene claves foráneas.

- Encuestas:
Clave primaria:Id_encuesta (identificador único de la encuesta)
Registra el id_cliente, puntaje, comentarios. 
Claves foráneas: Id_cliente en referencia al Id_clientes de la tabla clientes.

- Log_ventas: es una tabla auxiliar para cuando se registre una venta (mediante trigger) queda el empleado logueado en esta tabla.
Clave primaria: id_log 
Registra también el nombre del empleado y la fehca de registro

- Productos:
Clave primaria: id_producto (identificador único del producto)
Registra el nombre, categoría y precio.

- Ventas:
Clave primaria: Id_ventas (identificador único de la venta)
Registra el id_cliente, Id_producto, Id_empleado, fecha y monto.
Claves foráneas: Id_cliente en REFERENCES Clientes (Id_cliente)
                 Id_producto en REFERENCES Productos (Id_producto)
                 Id_empleado en  REFERENCES Empleados1 (Id_empleado)  
  
    

##  Vistas creadas

- vista_clientes_activos: 
El objetivo es saber los clientes que hicieron una compra en los últimos 30 días. Incluye la tabla de clientes (id_cliente, nombre, apellido) y tabla ventas (id_cliente).

- vista_clientes_top:
El objetivo de esta vista es saber quiénes son los mejores clientes. Incluye el id_cliente, nombre y apellido de la tabla Clientes e incluye el Id_ventas y monto de la tabla Ventas.

- vista_descuentos_aplicados:
Esta vista la creé para poder usar y ver la FUNCIÓN DE DESCUENTO.  Nos muestra el id_ventas, nombre y apellido, el producto, monto, descuento aplicado, total descuento y la fecha.

- vista_satisfaccion_de_clientes: puntaje promedio de encuestas:
Nos muestra la cantidad de encuestas y el puntaje promedio. Incluye la tabla de Clientes (Id, nombre y apellido) y de la tabla Encuestas el id_cliente.

- vista_ventas_por_categoria: e
El objetivo es ver el total facturado y cuántos productos se vendieron por categoría. Incluye tabla de Productos (categoría) y tabla de Ventas (id_producto).

## Stored Procedures

•	ObtenerVentasPorDia: Nos muestra la cantidad de ventas por día y el monto total facturado. Involucra la tabla de ventas (fecha y monto)

•	RegistrarVenta: Registra las ventas diarias. Involucra tabla de Ventas.

• Reporte_ventas_empleados: ranking de ventas por empleado.

##  Funciones destacadas

• Calcular_descuento: aplica descuentos según monto.  Se descuenta el 10% si el monto es mayor o = a 150.000 y si es mayor o = a 45.000 se aplica un 0.5% y sino no se aplica ningún descuento.

• nivel_satisfaccion: interpreta promedio de puntajes. Si el nivel de satisfacción del cliente es 4 devuelve (Excelente); si el puntaje_promedio >= 3.5 (Buena) y si es puntaje_promedio >= 2.5 (Regular).

• obtener_nombre_completo y obtener_nombre_completo_de_cliente: simplifican reportes.

## Creacion de los Usuarios y Asignación de Permisos

La creación de usuarios y asignación de permisos se utiliza para controlar el acceso a los datos almacenados en la base de datos.

En el siguiente script, se crea un usuario llamado SOLEDAD que solo puede conectarse desde el servidor local (localhost) y se le asigna una contraseña (contrasenajunio). 
Luego, se le otorgan permisos de solo lectura (SELECT) sobre todas las tablas de la base de datos solo_deportes:
* CREATE USER 'SOLEDAD'@'LOCALHOST' IDENTIFIED BY 'contrasenajunio'; 
  GRANT SELECT ON solo_deportes.* TO 'SOLEDAD'@'LOCALHOST';

En el siguiente script, se crea un usuario llamado pablogomez, que solo puede conectarse desde el servidor local (localhost). Se le asigna la contraseña contrasena123. A este usuario se le otorgan permisos para consultar (SELECT) e insertar datos (INSERT) exclusivamente en la tabla encuestas de la base de datos solo_deportes:
* CREATE USER 'pablogomez'@'localhost' IDENTIFIED BY 'contrasena123'; -- Se crea el usuario 'pablogomez' de la tabla empleados (ver tabla empleados donde id = 1001)--
  GRANT SELECT, INSERT ON solo_deportes.encuestas TO 'pablogomez'@'localhost'; -- Se le otorgan permisos SOLO sobre la tabla 'encuestas'

En el siguiente script, se crea un usuario llamado sofíamartínez, que puede conectarse únicamente desde el servidor local (localhost). 
Se le asigna la contraseña contrasena456. Este usuario recibe todos los privilegios posibles (ALL PRIVILEGES) sobre la tabla ventas de la base de datos solo_deportes, lo que le permite consultar, insertar, actualizar, eliminar datos y gestionar la estructura de dicha tabla:
* CREATE USER 'sofíamartínez'@'localhost' identified by 'contrasena456'; 
  GRANT ALL PRIVILEGES ON solo_deportes.ventas TO 'sofíamartínez'@'localhost';

## Triggers del proyecto

Trigger: 'after_insert_venta':
Se activa automáticamente después de insertar una nueva venta en la tabla ventas. Su propósito es mantener un registro de auditoría en la tabla log_ventas. 
Para ello, busca el nombre completo del empleado que realizó la venta en la tabla Empleados1.
Inserta en log_ventas un nuevo registro con el ID de la venta, el nombre del empleado y la fecha/hora del registro.
Este mecanismo permite trazar qué empleado realizó cada venta, útil para reportes, seguimiento interno o control de actividad.

## Backup de la base de datos

El archivo de backup está incluido en este repositorio.

👉 [Descargar backup_solo_deportes(1).sql](./backup_solo_deportes(1).sql)

### Cómo restaurar la base:

1. Abrí **MySQL Workbench**.
2. Conectate al servidor local.
3. Hacé clic en `File > Open SQL Script...` y seleccioná el archivo `backup_solo_deportes(1).sql`.
4. Ejecutá todo el contenido presionando **Ctrl + Shift + Enter**.
5. La base de datos `solo_deportes` se creará automáticamente con sus tablas y datos.


## 📊 Informes y Gráficos
👉 Ver reporte por empleado en PDF:https://github.com/Solescudero100/Escudero-Proyecto-Final/blob/main/Reporte%20por%20empleado%20-%20tabla-.pdf
👉 Ver grafico visual con cantidad de ventas y tendencia: https://github.com/Solescudero100/Escudero-Proyecto-Final/blob/main/Cantidad%20de%20ventas%20por%20empleado%20(1).pdf






---

Este proyecto fue realizado en el marco del curso de Base de Datos con MySQL.

