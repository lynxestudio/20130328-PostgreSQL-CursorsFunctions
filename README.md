# Cursores (Cursors) y Funciones (Functions) PLpg/SQL en PostgreSQL

Un cursor es el nombre que recibe un apuntador (pointer) de solo lectura hacia un conjunto de datos ( resultset) que se obtiene de una consulta SQL asociada, para los cursores pensemos en términos de arreglos similar a los arreglos de un lenguaje de programación, los cursores nos sirven para procesar una a una las filas que componen un conjunto de resultados en vez de trabajar con todos los registros como en una consulta tradicional de SQL.

Los cursores pueden declararse con una consulta SQL sin parámetros o con parámetros, en donde el tamaño del conjunto de datos depende del valor de los parámetros de la consulta. Así por ejemplo declaramos:


Los cursores pueden emplearse dentro de funciones PL/SQL para que las aplicaciones que accedan a PostgreSQL puedan utilizarlos más de una vez.

Como ejemplo tenemos una base de datos llamada myinvoices,


que contiene las siguientes tablas:
invoices
invoicedetails


Ahora como ejemplo de un cursor utilizado dentro de una función, declaramos una función utilizando un cursor con parámetros para devolver el total de facturas emitidas dentro de un rango de fechas.


Existen dos errores comunes cuando trabajamos con cursores:

Si tratas de abrir un cursor que ya se encuentra abierto PostgreSQL enviará un mensaje de “cursor [name] already in use”
Si tratas de ejecutar FETCH en un cursor que no ha sido abierto, PostgreSQL enviará un mensaje de “cursor [name] is invalid”
Cuando utilizamos el comando FETCH obtenemos una por una las filas del conjunto de resultados después de cada fila procesada el cursor avanza a la siguiente fila y la fila procesada puede ser entonces utilizada dentro de una variable.

Consultamos los datos de la tabla invoices


Ejecutamos la función, usando los siguientes argumentos:

Obtenemos los siguientes resultados:
