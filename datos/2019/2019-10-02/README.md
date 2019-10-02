# Datos sobre los tweets de LatinR 2019

Esta semana analizaremos datos sobre los tweets resultantes de la conferencia LatinR 2019.

## Sobre los datos

tenemos 2 datasets uno siguiendo el hashtag #LatinR2019 y otro siguiendo la cuenta oficial @LatinR_Conf

## Obtener los datos

```r
# install.packages("readr")
tweets_latinr_conf <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-02/tweets_latinr_conf.csv")
tweets_latinr <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-02/tweets_latinR.csv")
```

## Diccionario de datos

Se incluye una versión de los datos con y sin los nombres de los países

#### `tweets_latinr_conf`

|Variable            |class     |Clase    |Descripción         |
|:-------------------|:---------|:--------|:-------------------|
|id                  |double    |decimal  |identificador|
|id_conversacion     |double    |decimal  |identificador conversación|
|creado_en           |double    |decimal  |creado en|
|fecha               |double    |decimal  |fecha|
|hora                |double    |decimal  |hora|
|huso_horario        |character |caracter |huso horario|
|id_usuario          |double    |decimal  |identificador usuario|
|nombre_usuario      |character |caracter |nombre usuario|
|nombre              |character |caracter |nombre|
|lugar               |logical   |lógico   |lugar|
|tweet               |character |caracter |tweet|
|menciones           |character |caracter |menciones|
|urls                |character |caracter |urls|
|fotos               |character |caracter |fotos|
|cantidad_respuestas |double    |decimal  |cantidad_respuestas|
|cantidad_retweets   |double    |decimal  |cantidad_retweets|
|cantidad_likes      |double    |decimal  |cantidad_likes|
|hashtags            |character |caracter |hashtags|
|cashtags            |character |caracter |cashtags|
|enlaces             |character |caracter |enlaces|
|retweet             |logical   |lógico   |retweet|
|url_cita            |character |caracter |url_cita|
|vide                |double    |decimal  |vide|
|cercano             |logical   |lógico   |cercano|
|geo                 |logical   |lógico   |geo|
|fuente              |logical   |lógico   |fuente|
|id_usuario_retweet  |logical   |lógico   |identificador usuario retweet|
|usuario_retweet     |logical   |lógico   |usuario retweet|
|id_retweet          |logical   |lógico   |identificador retweet|
|respuesta_a         |character |caracter |respuesta a|
|fecha_retweet       |logical   |lógico   |fecha retweet|


#### `tweets_latinr`

|Variable            |class     |Clase    |Descripcion         |
|:-------------------|:---------|:--------|:-------------------|
|id                  |double    |decimal  |identificador|
|id_conversacion     |double    |decimal  |identificador conversación|
|creado_en           |double    |decimal  |creado en|
|fecha               |double    |decimal  |fecha|
|hora                |double    |decimal  |hora|
|huso_horario        |character |caracter |huso horario|
|id_usuario          |double    |decimal  |identificador usuario|
|nombre_usuario      |character |caracter |nombre_usuario|
|nombre              |character |caracter |nombre|
|lugar               |character |caracter |lugar|
|tweet               |character |caracter |tweet|
|etiquetas           |character |caracter |etiquetas|
|respuestas          |character |caracter |respuestas|
|menciones           |character |caracter |menciones|
|urls                |character |caracter |urls|
|fotos               |character |caracter |fotos|
|cantidad_respuestas |double    |decimal  |cantidad respuestas|
|cantidad_retweets   |double    |decimal  |cantidad retweets|
|cantidad_likes      |double    |decimal  |cantidad likes|
|ubucacion           |logical   |lógico   |ubucacion|
|hashtags            |character |caracter |hashtags|
|enlaces             |character |caracter |enlaces|
|retweet             |logical   |lógico   |retweet|
|url_gif             |character |caracter |url gif|
|muestra_gif         |character |caracter |muestra gif|
|url_video           |character |caracter |url video|
|muestra_video       |character |caracter |muestra video|
|estado_es_cita      |double    |decimal  |estado es cita|
|id_cita             |double    |decimal  |identificador cita|
|url_cita            |character |caracter |url cita|
|es_respuesta_a      |double    |decimal  |es respuesta a|
|tiene_tweet_padre   |double    |decimal  |tiene tweet padre|

### Fuente de datos

Los datos son resultado del analisis expandido de @TuQmano la fuente original esta en su github: https://github.com/TuQmano/data_TuQmanoR



## Inspiración

Se pueden hacer análisis de tweets varios. 

post original: https://twitter.com/TuQmano/status/1178987469083217925

blog: https://tuqmano.github.io/2019/09/30/latinr2019-ha-muerto-que-viva-latinr2020/

## Otros


### Código para los nombres originales de las columnas de twitter


nombres columnas tweets #LatinR2019

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
    27,      "video_thumb","muestra_video_",
    28,  "is_quote_status","estado_es_cita",
    29,         "quote_id","id_cita",
    30,        "quote_url","url_cita",
    31,      "is_reply_to","es_respuesta_a",
    32, "has_parent_tweet","tiene_tweet_padre"
)
```


nombres menciones tweets cuenta @LatinR_Conf

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