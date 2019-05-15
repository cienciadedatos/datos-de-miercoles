
# Datos sobre Rankings Musicales


Esta semana exploraremos datos de rankings musicales "Top 50" de países hispanohablantes. Para esto, accederemos a la API de Spotify a través del paquete `Rspotify`. Además de los datos básicos como nombre de la canción, artista y álbum, también se incluirán características musicales como qué tan "positivas" o bailables son las canciones.

## Obtener los datos


Para obtener los datos deberás seguir estos 4 sencillos pasos:

- Hacer una App de Spotify Developer [aquí](https://developer.spotify.com/dashboard) (puedes seguir las imágenes en [estas instrucciones en inglés](https://r-music.rbind.io/posts/2018-10-01-rspotify/)):
    -   Crea una cuenta si no tienes una
    -   Crea una app declarando si es comercial o no (en nuestro caso, no lo es).
    -   Copia tu `client ID` y tu `client Secret`.
    -   Haz clic en "Edit settings" y cambia Redirect URLs a <http://localhost:1410/> .
- Instala los paquetes `Rspotify` y `httpuv` si no los tienes (con `install.packages`).
- En el siguiente código, cambia en la línea que se definen las `keys` los valores de `app_id`, `client_id` y `client_secret` por tus datos (línea 8. contando los saltos de línea).
- Corre el código. Dependiendo de tu conexión, tardará en ejecutarse unos 4 minutos.

<!-- -->
    ########### Extraer Top 50 ############

    # install.packages("Rspotify")
    # install.packages("tidyverse")
    library(Rspotify)
    library(tidyverse)

    keys <- spotifyOAuth("app_id", "client_id", "client_secret")

    paises_es <- c("Argentina", "Bolivia", "Chile", "Colombia", "Costa Rica",
                   "Cuba","la Republica Dominicana", "Dominican Republic",
                   "Ecuador", "El Salvador", "Equatorial Guinea", "España",
                   "Guatemala", "Honduras", "México", "Nicaragua", "Panamá",
                   "Paraguay", "Perú", "Puerto Rico", "Uruguay", "Venezuela")
    user_playlists_1 <- getPlaylists("qn9el801z6l32l2whymqqs18p", token = keys)
    user_playlists_2 <- getPlaylists("qn9el801z6l32l2whymqqs18p", 50, token = keys)
    tops_50 <- rbind(user_playlists_1, user_playlists_2)
    # encontré aparte el de venezuela que no estaba incluido
    tops_50 <- rbind(tops_50, c("624oAiyjMdmpdJWIylharU", "El Top 50 de Venezuela", "suo2sbl91eeth3elwrfuq7qwn", 50))

    paises <- purrr::map_chr(tops_50$name, ~ str_remove(.x, "El Top 50 de "))
    bool_es <- purrr::map_lgl(paises, ~ .x %in% paises_es)
    tops_50_es <- tops_50[bool_es, ]

    viralcharts_user = "qn9el801z6l32l2whymqqs18p"

    canciones_tops50_es <- purrr::map(tops_50_es$id[-length(tops_50_es$id)],
                                      ~ getPlaylistSongs(user_id = viralcharts_user,
                                                         .x,
                                                         token = keys))
    canciones_tops50_es[[18]] <- getPlaylistSongs(user_id = "suo2sbl91eeth3elwrfuq7qwn",
                                                  "624oAiyjMdmpdJWIylharU",
                                                  token = keys)

    dataset_canciones = tibble()
    for (i in 1:length(canciones_tops50_es)) {
      dataset_canciones = rbind(dataset_canciones, cbind(canciones_tops50_es[[i]],
                                                         top = as.character(tops_50_es$name)[i],
                                                         numero = 1:nrow(canciones_tops50_es[[i]])))
    }
    features_canciones = tibble()
    for (j in 1:nrow(dataset_canciones)) {
      features_canciones = rbind(features_canciones,
                                 getFeatures(dataset_canciones$id[j], keys))
    }
    dataset_spotify = cbind(dataset_canciones, features_canciones)

    fechas = purrr::map(unique(dataset_spotify$album_id), ~getAlbumInfo(.x, keys)[1, 6])
    album_fechas =  tibble(album_id = unique(dataset_spotify$album_id),
                           fecha = as.character(unlist(fechas)))
    dataset_spotify = dataset_spotify[, -2] %>%
      left_join(album_fechas, by = "album_id")

    dataset_spotify = dataset_spotify %>%
      select(-id, -artist_id, - album_id, -uri, -analysis_url)

    nombres_columnas = c("cancion", "popularidad", "artista", "artista_completo",
                         "album", "top_pais", "puesto", "bailabilidad", "energia",
                         "nota_musical", "volumen", "modo", "hablado", "acustico",
                         "instrumental","en_vivo", "positividad", "tempo",
                         "duracion", "tiempo_compas", "fecha")
    colnames(dataset_spotify) <- nombres_columnas

¡Listo!

## Diccionario de datos


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
<td align="left">Nombre del/la artista</td>
</tr>
<tr class="even">
<td align="left">artista_completo</td>
<td align="left">caracter</td>
<td align="left">Nombre completo del/la artista</td>
</tr>
<tr class="odd">
<td align="left">album</td>
<td align="left">caracter</td>
<td align="left">Nombre del álbum</td>
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
<td align="left">Positividad (0-&gt;1) valores cercanos a 1 son alegres, eufóricos, y valores cercanos a 0 son tristes o de ira</td>
</tr>
<tr class="even">
<td align="left">tempo</td>
<td align="left">numerica</td>
<td align="left">Tempo promedio (pulsos/minuto)</td>
</tr>
<tr class="odd">
<td align="left">duracion</td>
<td align="left">numerica</td>
<td align="left">Duración en milisegundos</td>
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

## Fuente original y adaptación

La idea de los datos de esta semana, así como el código para extraerlos desde Spotify estuvieron a cargo de [violeta:green\_heart:](https://twitter.com/violetrzn).

Inspiración
-----------

Si no sabes por dónde empezar, puedes mirar algunas propuestas de visualización de datos musicales en estos blogs. Si bien están en inglés, las imágenes te pueden servir de inspiración:

-   Encuentra [aquí](https://ccapella.github.io/post/exploring-spotify-playlists-by-country/) un análisis de rankings Top 50 de países (en inglés).
-   Encuentra [aquí](https://towardsdatascience.com/a-visual-analysis-of-uk-number-1s-getting-down-and-dirty-with-data-a663cee021c4) un análisis de algunas características musicales (en inglés).

¿Más datos?
-----------

Si estás interesado en obtener más datos musicales puedes obtenerlos mediante el paquete `Rspotify`.
