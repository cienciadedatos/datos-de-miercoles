
Datos sobre la serie "La casa de papel"
=======================================

Esta semana exploraremos los dialogos de las tres temporadas de la serie "La casa de papel". Estos datos fueron extraídos de un portal de subtítulos y se encuentran en el lenguaje original. Cada observación es un subtítulo.

Obtener los datos
=================

Puedes utilizar el siguiente código para importar los datos a R:

    # install_packages("readr")
    la_casa_de_papel <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-07-31/la_casa_de_papel.csv")

Diccionario de datos
--------------------

<table>
<colgroup>
<col width="17%" />
<col width="10%" />
<col width="71%" />
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
<td align="left">ID_epi</td>
<td align="left">numerica</td>
<td align="left">Orden del subtítulo dentro del episodio</td>
</tr>
<tr class="even">
<td align="left">tiempo_entrada</td>
<td align="left">caracter</td>
<td align="left">Tiempo en el que aparece el subtítulo, formato: %H:%M:%S.%OS</td>
</tr>
<tr class="odd">
<td align="left">tiempo_salida</td>
<td align="left">caracter</td>
<td align="left">Tiempo en el que desaparece el subtítulo, formato: %H:%M:%S.%OS</td>
</tr>
<tr class="even">
<td align="left">texto</td>
<td align="left">caracter</td>
<td align="left">Texto del subtítulo</td>
</tr>
<tr class="odd">
<td align="left">episodio</td>
<td align="left">numerica</td>
<td align="left">Número del episodio</td>
</tr>
<tr class="even">
<td align="left">temporada</td>
<td align="left">numerica</td>
<td align="left">Número de temporada</td>
</tr>
</tbody>
</table>

Fuente original y adaptación
----------------------------

Los subtítulos fueron descargados del portal [MySubs](https://my-subs.com/versions-2402-1-1-la-casa-de-papel-subtitles) y luego limpiados con la ayuda del paquete `subtools` por [violeta](https://twitter.com/violetrzn).

Inspiración
-----------

Si necesitas algo en lo que inspirarte, puedes darle una mirada al análisis de los subtítulos de Rick and Morty [aquí](https://pacha.hk/blog/2017/10/13/rick-and-morty-and-tidy-data-principles-part-1/).
