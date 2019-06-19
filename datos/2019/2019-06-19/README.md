
Datos de legislaciones sobre orientación sexual 
====================

Esta semana exploraremos datos de legislaciones sobre orientación sexual provenientes del informe "Homofobia de Estado" que publica [ILGA](https://ilga.org/es) cada año. El conjunto de datos `leyes` indica la legalidad de las relaciones entre parejas del mismo sexo en los distintos países. Además incluye información más específica sobre tipos de derechos y en qué lugares están legislados. El dataset `cambios` indica la legalidad de relaciones de este tipo en el año 2017 y en el año 2019.

Obtener los datos
=================

Puedes utilizar el siguiente código para importar los datos a R:

    # install_packages("readr")
    leyes <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-19/leyes.csv")
    cambios <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-19/cambios.csv")

Diccionario de datos
--------------------

#### `leyes`

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
<td align="left">pais_es</td>
<td align="left">caracter</td>
<td align="left">País</td>
</tr>
<tr class="even">
<td align="left">criminalizacion</td>
<td align="left">factor</td>
<td align="left">Legalidad de las relaciones entre personas adultas del mismo sexo (0 = ilegal, 1 = legal, 2 = de facto ilegal)</td>
</tr>
<tr class="odd">
<td align="left">criminalizacion_genero</td>
<td align="left">caracter</td>
<td align="left">Género criminalizado</td>
</tr>
<tr class="even">
<td align="left">criminalizacion_pena</td>
<td align="left">caracter</td>
<td align="left">Pena</td>
</tr>
<tr class="odd">
<td align="left">proteccion_constitucional</td>
<td align="left">factor</td>
<td align="left">Protección constitucional (0 = no,  1 = sí) </td>
</tr>
<tr class="even">
<td align="left">proteccion_derechos_amplios</td>
<td align="left">factor</td>
<td align="left">Protección de derechos amplios (0 = no,  1 = sí) </td>
</tr>
<tr class="odd">
<td align="left">proteccion_empleo</td>
<td align="left">factor</td>
<td align="left">Protección del empleo (0 = no,  1 = sí) </td>
</tr>
<tr class="even">
<td align="left">proteccion_contra_crimenes_odio</td>
<td align="left">factor</td>
<td align="left">Protección contra crímenes de odio (0 = no,  1 = sí) </td>
</tr>
<tr class="odd">
<td align="left">proteccion_contra_incitacion_odio</td>
<td align="left">factor</td>
<td align="left">Protección contra la incitación al odio y la violencia (0 = no,  1 = sí) </td>
</tr>
<tr class="even">
<td align="left">reconocimiento_matrimonio</td>
<td align="left">factor</td>
<td align="left">Reconocimiento del matrimonio (0 = no,  1 = sí) </td>
</tr>
<tr class="odd">
<td align="left">reconocimiento_union_civil</td>
<td align="left">factor</td>
<td align="left">Reconocimiento de la unión civil (0 = no,  1 = sí) </td>
</tr>
<tr class="even">
<td align="left">reconocimiento_adopcion_conjunta</td>
<td align="left">factor</td>
<td align="left">Reconocimiento de la adopción conjunta (0 = no,  1 = sí) </td>
</tr>
<tr class="odd">
<td align="left">reconocimiento_adopcion_segundo_padre</td>
<td align="left">factor</td>
<td align="left">Reconocimiento adopción como segunda/o madre/padre (0 = no,  1 = sí) </td>
</tr>
</tbody>
</table>

Esta puede ser una muy buena oportunidad para explorar el paquete `forcats` que sirve para el manejo de variables categóricas.

#### `cambios`

<table>
<colgroup>
<col width="7%" />
<col width="7%" />
<col width="84%" />
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
<td align="left">pais_es</td>
<td align="left">caracter</td>
<td align="left">Pais</td>
</tr>
<tr class="even">
<td align="left">datos_2017</td>
<td align="left">caracter</td>
<td align="left">Legalidad de las relaciones entre parejas del mismo sexo en el año 2017 (ilegal, legal o de_facto_ilegal)</td>
</tr>
<tr class="odd">
<td align="left">datos_2019</td>
<td align="left">caracter</td>
<td align="left">Legalidad de las relaciones entre parejas del mismo sexo en el año 2019 (ilegal, legal o de_facto_ilegal))</td>
</tr>
</tbody>
</table>

Fuente original y adaptación
----------------------------

Los datos fueron extraídos del portal de [ILGA](https://ilga.org/es/mapas-legislacion-sobre-orientacion-sexual) y luego traducidos.

Inspiración
-----------

Si necesitas algo en lo que inspirarte, puedes darle una mirada a los [mapas](https://ilga.org/es/mapas-legislacion-sobre-orientacion-sexual) que fueron realizados con estos mismos datos.

Extra
-----

Puedes chequear el paquete [rainbowr](https://github.com/djnavarro/rainbowr) para crear hex stickers o banners con estampas LGBTI+.
