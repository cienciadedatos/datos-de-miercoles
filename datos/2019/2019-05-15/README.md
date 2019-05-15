
Datos sobre Rankings Musicales 
==============================

Esta semana exploraremos datos de Rankings musicales :musical\_note: "Top 50" de países hispanohablantes. Estas listas de reprodución fueron obtenidas de la API de Spotify el 14/05/19 mediante el paquete `Rspotify`. Además de los datos básicos como nombre de la canción, artista y álbum también se incluyen características musicales como positividad y bailabilidad de las canciones.

Obtener los datos
-----------------

Puedes utilizar el siguiente código para importar los datos a R:

    # install.packages("readr")
    datos_tops <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-15/datos_spotify.csv")

Diccionario de datos
--------------------

### `datos_spotify`

<table>
<colgroup>
<col width="13%" />
<col width="7%" />
<col width="79%" />
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
<td align="left">cancion</td>
<td align="left">caracter</td>
<td align="left">Nombre de la canción</td>
</tr>
<tr class="even">
<td align="left">popularidad</td>
<td align="left">numerica</td>
<td align="left">Popularidad en la plataforma</td>
</tr>
<tr class="odd">
<td align="left">artista</td>
<td align="left">caracter</td>
<td align="left">Nombre del artista</td>
</tr>
<tr class="even">
<td align="left">artista_completo</td>
<td align="left">caracter</td>
<td align="left">Nombre completo del artista</td>
</tr>
<tr class="odd">
<td align="left">album</td>
<td align="left">caracter</td>
<td align="left">Nombre del album</td>
</tr>
<tr class="even">
<td align="left">top_pais</td>
<td align="left">caracter</td>
<td align="left">País del ranking 'El Top 50 de ...'</td>
</tr>
<tr class="odd">
<td align="left">puesto</td>
<td align="left">entera</td>
<td align="left">Puesto que ocupa en este ranking</td>
</tr>
<tr class="even">
<td align="left">bailabilidad</td>
<td align="left">numerica</td>
<td align="left">Calidad de bailable (de 0 -&gt; 1)</td>
</tr>
<tr class="odd">
<td align="left">energia</td>
<td align="left">numerica</td>
<td align="left">Intensidad y actividad (de 0 -&gt; 1), ej: heavy metal cercano a 1</td>
</tr>
<tr class="even">
<td align="left">tonalidad</td>
<td align="left">factor</td>
<td align="left">Tonalidad: 0 = Do, 1 = C#, 2 = Re, y así sucesivamente</td>
</tr>
<tr class="odd">
<td align="left">volumen</td>
<td align="left">numerica</td>
<td align="left">Volumen promedio en decibeles</td>
</tr>
<tr class="even">
<td align="left">modo</td>
<td align="left">factor</td>
<td align="left">Modo: Mayor/Menor</td>
</tr>
<tr class="odd">
<td align="left">hablado</td>
<td align="left">numerica</td>
<td align="left">Detecta la presencia de palabra hablada (0-&gt;1), ej: un podcast tendría puntaje alto</td>
</tr>
<tr class="even">
<td align="left">acustico</td>
<td align="left">numerica</td>
<td align="left">Detecta si es acústica (0-&gt;1)</td>
</tr>
<tr class="odd">
<td align="left">instrumental</td>
<td align="left">numerica</td>
<td align="left">Instrumental (0-&gt;1), más de 0.5 es considerado instrumental</td>
</tr>
<tr class="even">
<td align="left">en_vivo</td>
<td align="left">numerica</td>
<td align="left">Público presente (0-&gt;1), ej: un recital debería tener valor cercano a 1</td>
</tr>
<tr class="odd">
<td align="left">positividad</td>
<td align="left">numerica</td>
<td align="left">Positividad (0-&gt;1) valores cercanos a 1 son alegres, euforicos y valores cercanos a 0 son tristes, de ira</td>
</tr>
<tr class="even">
<td align="left">tempo</td>
<td align="left">numerica</td>
<td align="left">Tempo promedio (pulsos/minuto)</td>
</tr>
<tr class="odd">
<td align="left">duracion</td>
<td align="left">numerica</td>
<td align="left">Duracion en milisegundos</td>
</tr>
<tr class="even">
<td align="left">tiempo_compas</td>
<td align="left">entera</td>
<td align="left">Cantidad de pulsos por compás</td>
</tr>
<tr class="odd">
<td align="left">fecha</td>
<td align="left">caracter</td>
<td align="left">Fecha de lanzamiento</td>
</tr>
</tbody>
</table>

Fuente original y adaptación
----------------------------

Este *dataset* recoge datos de Spotify. La selección y traducción al español estuvo a cargo de [violeta:green\_heart:](https://twitter.com/violetrzn).

Inspiración
-----------

Si no sabes por dónde empezar, puedes mirar algunas propuestas de visualización de datos musicales:

-   Encuentra [aquí](https://ccapella.github.io/post/exploring-spotify-playlists-by-country/) un análisis de rankings Top 50 de países (en inglés).
-   Encuentra [aquí](https://towardsdatascience.com/a-visual-analysis-of-uk-number-1s-getting-down-and-dirty-with-data-a663cee021c4) un análisis de algunas características musicales (en inglés).

¿Más datos?
-----------

Si estás interesado en obtener más datos musicales puedes obtenerlos mediante el paquete `Rspotify`.
