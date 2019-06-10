
# Datos sobre Rankings Musicales


Esta semana exploraremos datos de rankings musicales "Top 50" de países hispanohablantes. Para esto, accederemos a la API de Spotify a través del paquete `Rspotify`. Además de los datos básicos como nombre de la canción, artista y álbum, también se incluirán características musicales como qué tan "positivas" o bailables son las canciones.

## Obtener los datos


Para obtener los datos deberás seguir estos 3 sencillos pasos:

- Hacer una App de Spotify Developer [aquí](https://developer.spotify.com/dashboard) (puedes seguir las imágenes en [estas instrucciones en inglés](https://r-music.rbind.io/posts/2018-10-01-rspotify/)):
    -   Crea una cuenta si no tienes una
    -   Crea una app con el nombre que quieras (app-id), escoge Website entre las opciones y declara si es comercial o no (en nuestro caso, no lo es).
    -   Copia tu `client ID` y tu `client Secret`.
    -   Haz clic en "Edit settings" y cambia Redirect URLs a <http://localhost:1410/> .
- Instala los paquetes `Rspotify` y `httpuv` si no los tienes (con `install.packages`).
- En el siguiente código, cambia en la línea que se definen las `keys` los valores de `app_id`, `client_id` y `client_secret` por tus datos (línea 8. contando los saltos de línea).

Corre el código. Dependiendo de tu conexión, tardará en ejecutarse unos 4 minutos.

<!-- -->
    ########### Extraer Top 50 ############

    # install.packages("Rspotify")
    # install.packages("tidyverse")
    # install.packages("httpuv")
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

## Otra versión del código

[Julio Spairani](https://twitter.com/jspairani) elaboró esta otra versión del código para extraer los mismos datos. Incluye comentarios para cada fase del proceso. 

```r
### Otra versión del código

# install.packages("Rspotify")
# install.packages("httpuv")
# install.packages("tidyverse")

library(Rspotify)
library(tidyverse)


## Conexion spotify


app_id <- 'aplicacion_datos_de_miercoles' # el nombre que pusiste en la aplicacion
client_id<- 'asd123' # el client id que figura en la web de spotify
client_secret <- 'asd123' # el client secret que figura en la web de spotify

keys <- spotifyOAuth(app_id, client_id, client_secret)


## obtencion de listas de top 50

# devuelve de a maximo 50.
user_playlists_1 <- getPlaylists("qn9el801z6l32l2whymqqs18p", token = keys)

# sigo del 51 en adelante ( ignora los primeros 50 )
user_playlists_2 <- getPlaylists("qn9el801z6l32l2whymqqs18p", offset = 50, token = keys)

# encontré aparte el de venezuela que no estaba incluido
user_playlists_3 <- data.frame(id="624oAiyjMdmpdJWIylharU",name="El Top 50 de Venezuela",ownerid="suo2sbl91eeth3elwrfuq7qwn",tracks=50,stringsAsFactors = FALSE)

# junto todo
usr_playlist_total <- user_playlists_1 %>%
  union_all(user_playlists_2) %>%
  union_all(user_playlists_3) %>%
  rename(lista_id=id,
         nombre=name,
         quien_lista_id=ownerid,
         cantidad_canciones=tracks)

## filtrado top 50 a paises habla hispana


paises_es <- c("Argentina", "Bolivia", "Chile", "Colombia", "Costa Rica",
               "Cuba","la Republica Dominicana", "Dominican Republic",
               "Ecuador", "El Salvador", "Equatorial Guinea", "España",
               "Guatemala", "Honduras", "México", "Nicaragua", "Panamá",
               "Paraguay", "Perú", "Puerto Rico", "Uruguay", "Venezuela")

top_50_total <- usr_playlist_total %>%
  mutate(pais_nombre=str_remove(nombre, "El Top 50 de "))

top_50_total_es <- top_50_total %>%
  filter(pais_nombre %in% paises_es)


## Expando top 50 a paises habla hispana

# para pre procesar la lista de canciones
top_50_total_es_canciones_nested <- top_50_total_es %>%
  # agrega una columna dataframe
  mutate(canciones_lista =  purrr::pmap(.l=list(user_id=quien_lista_id,
                                                playlist_id=lista_id),
                                        .f=getPlaylistSongs,
                                        token=keys))
# modifico los dataframe y luego los expando
top_50_total_es_canciones <- top_50_total_es_canciones_nested %>%
  mutate(canciones_lista_con_puesto= purrr::map(canciones_lista,.f=function(top_50_param){
    top_50_resultado <- top_50_param %>% # al parametro que me llega
      mutate(cancion_numero=row_number()) %>% # agrego numero de top
      mutate(cancion_top=paste0(artist_full,' - ',tracks)) %>%  # agrego el nombre de la cancion con el artista full.
      rename(cancion_nombre=tracks,
             cancion_id=id,
             cancion_popularidad=popularity,
             cancion_artista=artist,
             cancion_artista_completo=artist_full,
             cancion_artista_id=artist_id,
             cancion_album=album,
             cancion_album_id=album_id)#cambio nombres columnas#
    top_50_resultado # el resultado que se va a devolver
  })) %>%
  unnest(canciones_lista_con_puesto) # expando el dataframe.


## features de las canciones

top_50_total_es_canciones_features <- top_50_total_es_canciones %>%
  mutate(cancion_features =  purrr::map(.x=cancion_id,
                                        .f=getFeatures,
                                        token=keys))


top_50_total_es_canciones_features_unnested <- top_50_total_es_canciones_features %>%
  unnest(cancion_features) %>%
  rename(feature_id=id,
         feature_bailabilidad=danceability,
         feature_energia=energy,
         feature_clave=key,
         feature_fuerza=loudness,
         feature_modo=mode,
         feature_hablabilidad=speechiness,
         feature_acusticidad=acousticness,
         feature_instrumenabilidad=instrumentalness,
         feature_vivacidad=liveness,
         feature_valencia=valence,
         feature_tempo=tempo,
         feature_duracion_ms=duration_ms,
         feature_firma_temporal=time_signature,
         feature_uri=uri,
         feature_analisis_url=analysis_url)


## obtener informacionde los album


# para ahorrar queries: buscamos 1 sola vez la info de los albums
albums_info <- top_50_total_es_canciones_features_unnested %>%
  select(cancion_album_id) %>% # los album id
  distinct() %>% # unicos
  mutate(album_info=purrr::map(.x=cancion_album_id,
                               .f=getAlbumInfo,
                               token=keys))

albums_info_expandido <- albums_info %>%
  mutate(fechas=purrr::map(.x=album_info,
                           .f=function(album_inf_param){
                             album_inf_resu <- album_inf_param %>%
                               select(release_date) %>% # columna 6
                               head(1) %>% # el 1ro
                               pull() %>% # extraer
                               as.character() # como char
                             album_inf_resu # resu
                           })) %>%
  unnest(fechas)


albums_info_expandido_para_cruce <- albums_info_expandido %>% select(cancion_album_id,fechas)

#Cruzamos canciones con albums
top_50_total_es_canciones_featuress_albums <- top_50_total_es_canciones_features_unnested %>%
  left_join(albums_info_expandido_para_cruce, by = "cancion_album_id")


## seleccion final de columnas

top_50_total_es_para_desafio  <-  top_50_total_es_canciones_featuress_albums %>%
  select(-lista_id,-quien_lista_id,-cancion_id, -cancion_artista_id,-cancion_album_id,
         -feature_id, -feature_uri, -feature_analisis_url)

# aca dice como toman el atributo "valence"
# https://community.spotify.com/t5/Content-Questions/Valence-as-a-measure-of-happiness/td-p/4385221
top_50_total_es_para_desafio  <- top_50_total_es_para_desafio %>%
  rename(feature_acustico = feature_acusticidad,
         feature_hablado=feature_hablabilidad,
         feature_instrumental=feature_instrumenabilidad,
         feature_en_vivo=feature_vivacidad,
         feature_positividad=feature_valencia,
         feature_tiempo_compas=feature_firma_temporal,
         album_fecha=fechas)

top_50_total_es_para_desafio_final <- top_50_total_es_para_desafio %>%
  select(cancion_nombre,cancion_popularidad,cancion_artista,cancion_artista_completo,
         cancion_album,cancion_numero,pais_nombre,
         feature_bailabilidad,feature_energia,feature_clave,
         feature_fuerza,feature_modo,feature_hablado,feature_acustico,
         feature_instrumental,feature_en_vivo,feature_positividad,feature_tempo,
         feature_duracion_ms,feature_tiempo_compas,album_fecha)



## para darle un a mirada a los datos
# install.packages("skimr")
skimr::skim(top_50_total_es_para_desafio_final)


## para guardar el resultado:: WARN !


# no se puede subir a github por tema de condiciones de spotify.
# por eso se usa la api y el megatutorial de la api
# readr::write_delim(top_50_total_es_para_desafio_final,
#                    delim = "\t",
#                    path = "top_50_es.txt")



## para ver como es levantado desde el archivo:: WARN !


# no se puede subir a github por tema de condiciones de spotify.
# por eso se usa la api y el megatutorial de la api
# top_50_desde_file <- readr::read_delim(file = "top_50_es.txt",
#                   delim = "\t")
# skimr::skim(top_50_desde_file)
```
