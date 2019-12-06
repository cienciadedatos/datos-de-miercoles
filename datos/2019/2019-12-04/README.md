
Datos de una canasta de gestión menstrual 
====================

La menstruación implica un gasto extra en las personas que menstrúan, por lo que se constituye como un factor de desigualdad. Esta semana exploraremos datos sobre el costo de los productos de gestión menstrual (toallitas, tampones, etc.) a septiembre de 2019 en Argentina. Estos datos fueron escrapeados por Nayla Portas de [LAS de sistemas](https://twitter.com/lasdesistemas), en el marco de la campaña #MenstruAccion de [Economia Femini(s)ta](https://twitter.com/EcoFeminita). 

Obtener los datos
=================

Puedes utilizar el siguiente código para importar los datos a R:

    # install_packages("readr")
    menstruaccion <- readr::read_csv("https://raw.githubusercontent.com/nportas/menstruscrapper/master/Fuentes/precios-gestion-menstrual-2019-09-21.csv")

Diccionario de datos
--------------------

#### `menstruaccion`

<table style="width:100%;">
<colgroup>
<col width="24%" />
<col width="6%" />
<col width="68%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Variable</th>
<th align="left">Clase</th>
<th align="left">Descripcion</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Categoría</td>
<td align="left">caracter</td>
<td align="left">Categoría de producto</td>
</tr>
<tr class="even">
<td align="left">Marca</td>
<td align="left">caracter</td>
<td align="left">Marca del producto</td>
</tr>
<tr class="odd">
<td align="left">Nombre</td>
<td align="left">caracter</td>
<td align="left">Nombre del producto</td>
</tr>
<tr class="even">
<td align="left">Presentación</td>
<td align="left">caracter</td>
<td align="left">Presentación del producto</td>
</tr>
<tr class="odd">
<td align="left">Comercio</td>
<td align="left">caracter</td>
<td align="left">Entidad que comercializa el producto</td>
</tr>
<tr class="even">
<td align="left">Sucursal</td>
<td align="left">caracter</td>
<td align="left">Sucursal de la entidad que comercializa el producto</td>
</tr>
<tr class="odd">
<td align="left">Dirección</td>
<td align="left">caracter</td>
<td align="left">Dirección de la sucursal que comercializa el producto</td>
</tr>
<tr class="even">
<td align="left">Localidad</td>
<td align="left">caracter</td>
<td align="left">Localidad de la sucursal que comercializa el producto</td>
</tr>
<tr class="odd">
<td align="left">Provincia</td>
<td align="left">caracter</td>
<td align="left">Provincia de la sucursal que comercializa el producto</td>
</tr>
<tr class="even">
<td align="left">Precio de lista</td>
<td align="left">double</td>
<td align="left">Precio al que la sucursal comercializa el producto</td>
</tr>
</tbody>
</table>


Fuente original
----------------------------

Los datos fueron extraídos del repositorio  [menstruscrapper](https://github.com/nportas/menstruscrapper) que compila los datos y código de la campaña MenstruAcción. 

Inspiración
-----------

Si necesitas algo en lo que inspirarte, puedes darle una mirada a los [análisis](https://economiafeminita.com/cuanto-cuesta-menstruar-cual-es-la-inflacion-de-las-toallitas-y-tampones/) de Natsumi Shokida, que fueron realizados con estos mismos datos.
También puede ser útil revisar este [enlace](https://github.com/nportas/menstruscrapper/blob/master/Fuentes/ipc_10_19FB1348322D.pdf) con precios de referencia de otros productos.

Invitación
-----------

¿No hay datos de gestión menstrual de tu país? Esta puede ser una oportunidad para generarlos.
