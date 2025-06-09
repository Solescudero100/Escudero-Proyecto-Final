# Escudero-Proyecto-Final:
# solo_deportes

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

## Tablas creadas

- clientes
- empleados1
- encuestas
- log_ventas
- productos
- ventas

## 👁️‍🗨️ Vistas creadas

- vista_clientes_activos: compras en últimos 30 días
- vista_clientes_top: mejores clientes por compras
- vista_descuentos_aplicados: aplicación de descuentos automáticos
- vista_satisfaccion_de_clientes: puntaje promedio de encuestas
- vista_ventas_por_categoria: ventas y montos por categoría

## 🧾 Stored Procedures

- ObtenerVentasPorDia: ventas y facturación diaria
- RegistrarVenta: permite registrar ventas nuevas
- reporte_ventas_empleados: ranking de ventas por empleado

## ⚙️ Funciones destacadas

- calcular_descuento: aplica descuentos según monto
- nivel_satisfaccion: interpreta promedio de puntajes
- obtener_nombre_completo y obtener_nombre_completo_de_cliente: simplifican reportes




## 📄 Script completo

Se incluye el archivo [`backup_solo_deportes.sql`](backup_solo_deportes.sql) con:
- Creación de tablas
- Insert de datos
- Vistas, funciones y stored procedures
- Usuarios, permisos y triggers

## 📊 Informes y Gráficos

- **[reporte_empleados.pdf](reporte_empleados.pdf)**: muestra cantidad de ventas, total vendido y promedio por empleado.
- **[grafico_empleados.png](grafico_empleados.png)**: gráfico visual con los mismos datos.






## 🔐 Seguridad

- Se crearon usuarios como `soledad`, `pablogomez` y `sofíamartínez` con distintos permisos.
- Se implementó un trigger que registra automáticamente en `log_ventas` quién realizó cada venta.

## 📎 Cómo restaurar el proyecto

1. Abrí **MySQL Workbench**
2. Conectate a tu servidor local
3. Abrí el archivo `backup_solo_deportes.sql`
4. Ejecutá todo el script con `Ctrl + Shift + Enter`
5. ¡Listo!

---

Este proyecto fue realizado en el marco del curso de Base de Datos con MySQL.

