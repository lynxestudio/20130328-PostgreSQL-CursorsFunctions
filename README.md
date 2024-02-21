# Cursores  (Cursors) y Funciones (Functions) PLpg/SQL en PostgreSQL

<p align="justify">Un cursor es el nombre que recibe un apuntador (pointer) de solo lectura hacia un conjunto de datos ( resultset) que se obtiene de una consulta SQL asociada, para los cursores pensemos en términos de arreglos similar a los arreglos de un lenguaje de programación, los cursores nos sirven para procesar una a una las filas que componen un conjunto de resultados en vez de trabajar con todos los registros como en una consulta tradicional de SQL.</p>
<p>Los cursores pueden declararse con una consulta SQL sin parámetros o con parámetros, en donde el tamaño del conjunto de datos depende del valor de los parámetros de la consulta.  Así por ejemplo declaramos:</p>
<div>
<IMG src="picture_library/cursors2/query1.png">
</div>
<div>
<IMG src="picture_library/cursors2/query2.png">
</div>
<p align="justify">Los cursores pueden emplearse dentro de funciones PL/SQL para que las aplicaciones que accedan a PostgreSQL puedan utilizarlos más de una vez.</p>
<p align="justify">Como ejemplo tenemos una base de datos llamada <b>myinvoices</b>,
<div>
<IMG src="picture_library/cursors2/fig1.png" width="777">
</div><br>
que contiene las siguientes tablas:
<div><b>invoices</b></div>
<div><b>invoicedetails</b></div>
</p>
<div>
<IMG src="picture_library/cursors2/fig0.png" width="777">
</div><br>
<p align="justify">Ahora como ejemplo de un <b>cursor</b> utilizado dentro de una función, declaramos una función utilizando un <b>cursor con parámetros</b> para devolver el total de facturas emitidas dentro de un rango de fechas.</p>
<div>
<IMG src="picture_library/cursors2/fnc_getinvoices.png">
</div>
<div>
<IMG src="picture_library/cursors2/fig2.png" width="777">
</div><br>
<p align="justify">Existen dos errores comunes cuando trabajamos con cursores: 
<ol>
<li>Si tratas de abrir un cursor que ya se encuentra abierto PostgreSQL enviará un mensaje de <b>“cursor [name] already in use”</b></li>
<li>Si tratas de ejecutar <b>FETCH</b> en un cursor que no ha sido abierto, <b>PostgreSQL</b> enviará un mensaje de <b>“cursor [name] is invalid”</b></li>
</ol>
</p>
<p align="justify">Cuando utilizamos el comando FETCH obtenemos una por una las filas del conjunto de resultados  después de cada fila procesada el cursor avanza a la siguiente fila y la fila procesada puede ser entonces utilizada dentro de una variable.
</p>
<div>Consultamos los datos de la tabla <b>invoices</b></div><br>
<div>
<IMG src="picture_library/cursors2/fig3.png" width="777">
</div><br>
<div>Ejecutamos la función, usando los siguientes argumentos:</div>
<div>
<IMG src="picture_library/cursors2/query3.png">
</div>
<div>Obtenemos los siguientes resultados: </div><br>
<div>
<IMG src="picture_library/cursors2/fig4.png" width="777">
</div>
