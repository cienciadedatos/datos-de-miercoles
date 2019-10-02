# Datos sobre los tweets de LatinR 2019

Esta semana analizaremos datos sobre los tuits resultantes de la conferencia [LatinR 2019](https://latin-r.com).

## Sobre los datos

Se incluyen dos datasets: uno de los tuits que utilizan el hashtag #LatinR2019 y otro de tuits y respuestas de la cuenta oficial @[LatinR_Conf](https://twitter.com/LatinR_Conf)

## Obtener los datos

```r
# install.packages("readr")
tweets_latinr_conf <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-02/tweets_latinr_conf.csv")
tweets_latinr <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-02/tweets_latinR.csv")
```

## Diccionario de datos

#### `tweets_latinr_conf`

|Variable            |Clase    |Descripción         |
|:-------------------|:--------|:-------------------|
|id                  |numérica  |identificador|
|id_conversacion     |numérica  |identificador conversación|
|creado_en           |numérica  |creado en|
|fecha               |numérica  |fecha|
|hora                |numérica  |hora|
|huso_horario        |caracter |huso horario|
|id_usuario          |numérica  |identificador usuario|
|nombre_usuario      |caracter |nombre usuario|
|nombre              |caracter |nombre|
|lugar               |lógico   |lugar|
|tweet               |caracter |tweet|
|menciones           |caracter |menciones|
|urls                |caracter |urls|
|fotos               |caracter |fotos|
|cantidad_respuestas |numérica  |cantidad_respuestas|
|cantidad_retweets   |numérica  |cantidad_retweets|
|cantidad_likes      |numérica  |cantidad_likes|
|hashtags            |caracter |hashtags|
|cashtags            |caracter |cashtags|
|enlaces             |caracter |enlaces|
|retweet             |lógico   |retweet|
|url_cita            |caracter |url_cita|
|vide                |numérica  |vide|
|cercano             |lógico   |cercano|
|geo                 |lógico   |geo|
|fuente              |lógico   |fuente|
|id_usuario_retweet  |lógico   |identificador usuario retweet|
|usuario_retweet     |lógico   |usuario retweet|
|id_retweet          |lógico   |identificador retweet|
|respuesta_a         |caracter |respuesta a|
|fecha_retweet       |lógico   |fecha retweet|


#### `tweets_latinr`

|Variable            |Clase    |Descripcion         |
|:-------------------|:--------|:-------------------|
|id                  |numérica  |identificador|
|id_conversacion     |numérica  |identificador conversación|
|creado_en           |numérica  |creado en|
|fecha               |numérica  |fecha|
|hora                |numérica  |hora|
|huso_horario        |caracter |huso horario|
|id_usuario          |numérica  |identificador usuario|
|nombre_usuario      |caracter |nombre_usuario|
|nombre              |caracter |nombre|
|lugar               |caracter |lugar|
|tweet               |caracter |texto del tweet|
|etiquetas           |caracter |etiquetas|
|respuestas          |caracter |respuestas|
|menciones           |caracter |menciones|
|urls                |caracter |urls|
|fotos               |caracter |fotos|
|cantidad_respuestas |numérica  |cantidad de respuestas|
|cantidad_retweets   |numérica  |cantidad de retweets|
|cantidad_likes      |numérica  |cantidad de likes|
|ubicacion           |lógico   |ubicación|
|hashtags            |caracter |hashtags|
|enlaces             |caracter |enlaces|
|retweet             |lógico   |retweet|
|url_gif             |caracter |url gif|
|muestra_gif         |caracter |muestra gif|
|url_video           |caracter |url video|
|muestra_video       |caracter |muestra video|
|estado_es_cita      |numérica  |estado es cita|
|id_cita             |numérica  |identificador cita|
|url_cita            |caracter |url cita|
|es_respuesta_a      |numérica  |es respuesta a|
|tiene_tweet_padre   |numérica  |tiene tweet padre|

### Fuente de datos

Los datos son resultado del análisis expandido que hizo @[TuQmano](https://twitter.com/TuQmano). La fuente original está disponible en uno de sus [repositorios de Github](https://github.com/TuQmano/data_TuQmanoR).


## Inspiración

¡Existen distintas posibilidades para analizar los tuits! Puedes analizar frecuencias, hacer nubes de palabras, análisis de redes (grafos), análisis temporal, de sentimiento, ¡y otras cosas que se te ocurran :U!  

* Tuiteo original: https://twitter.com/TuQmano/status/1178987469083217925
* Blog: https://tuqmano.github.io/2019/09/30/latinr2019-ha-muerto-que-viva-latinr2020/

Como inspitación, puedes revisar el análisis que se hizo de los tuits sobre la conferencia useR!2019 [en este enlace](https://github.com/neilfws/Twitter/blob/master/user2019/code/R/user2019.md).

## Otros

### Código para los nombres originales de las columnas de Twitter

Nombres columnas tuits #LatinR2019

```r

nombre_tweets_latinR_raw <- tibble::tribble(
    ~orden,         ~nombre_en, ~nombre_es,
    1,               "id","id",
    2,  "conversation_id","id_conversacion",
    3,       "created_at","creado_en",
    4,             "date","fecha",
    5,             "time","hora",
    6,         "timezone","huso_horario",
    7,          "user_id","id_usuario",
    8,         "username","nombre_usuario",
    9,             "name","nombre",
    10,            "place","lugar",
    11,            "tweet","tweet",
    12,             "tags","etiquetas",
    13,          "replies","respuestas",
    14,         "mentions","menciones",
    15,             "urls","urls",
    16,           "photos","fotos",
    17,    "replies_count","cantidad_respuestas",
    18,   "retweets_count","cantidad_retweets",
    19,      "likes_count","cantidad_likes",
    20,         "location","ubicacion",
    21,         "hashtags","hashtags",
    22,             "link","enlaces",
    23,          "retweet","retweet",
    24,          "gif_url","url_gif",
    25,        "gif_thumb","muestra_gif",
    26,        "video_url","url_video",
    27,      "video_thumb","muestra_video_",
    28,  "is_quote_status","estado_es_cita",
    29,         "quote_id","id_cita",
    30,        "quote_url","url_cita",
    31,      "is_reply_to","es_respuesta_a",
    32, "has_parent_tweet","tiene_tweet_padre"
)
```

Nombres menciones tuits cuenta @LatinR_Conf

```r

nombre_tweets_latinR_raw <- tibble::tribble(
    ~orden,         ~nombre_en, ~nombre_es,
    1,               "id","id",
    2,  "conversation_id","id_conversacion",
    3,       "created_at","creado_en",
    4,             "date","fecha",
    5,             "time","hora",
    6,         "timezone","huso_horario",
    7,          "user_id","id_usuario",
    8,         "username","nombre_usuario",
    9,             "name","nombre",
    10,            "place","lugar",
    11,            "tweet","tweet",
    12,             "tags","etiquetas",
    13,          "replies","respuestas",
    14,         "mentions","menciones",
    15,             "urls","urls",
    16,           "photos","fotos",
    17,    "replies_count","cantidad_respuestas",
    18,   "retweets_count","cantidad_retweets",
    19,      "likes_count","cantidad_likes",
    20,         "location","ubucacion",
    21,         "hashtags","hashtags",
    22,             "link","enlaces",
    23,          "retweet","retweet",
    24,          "gif_url","url_gif",
    25,        "gif_thumb","muestra_gif",
    26,        "video_url","url_video",
    27,      "video_thumb","muestra_video",
    28,  "is_quote_status","estado_es_cita",
    29,         "quote_id","id_cita",
    30,        "quote_url","url_cita",
    31,      "is_reply_to","es_respuesta_a",
    32, "has_parent_tweet","tiene_tweet_padre"
)
```
