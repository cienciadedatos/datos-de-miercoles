
# Datos sobre eventos de RLadies

Esta semana la dedicaremos a la propia comunidad de R: analizaremos datos de los eventos de RLadies, que fueron extraídos de la plataforma Meetup. El primer _dataset_ contiene la información de cada grupo o "capítulo". El segundo, los datos de todos los eventos que han organizado a la fecha (26/06/2019).

¿Aún no sabes qué es RLadies? ¡Revisa su [sitio web](https://rladies.org/)!

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
capitulos_rladies <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-26/capitulos_rladies.csv")
eventos_rladies <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-26/eventos_rladies.csv")
```

## Diccionario de datos

#### `capitulos_rladies`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| capitulo | caracter | Nombre del capítulo (R-Ladies + ciudad) |
| creacion | fecha hora | Fecha y hora de creación de la página del grupo en Meetup |
| miembros | entero | Cantidad de personas inscritas en el grupo hasta el 25 de junio de 2019 |
| latitud | numérica | Latitud de la ciudad en que se encuentra el capítulo |
| longitud | numérica | Longitud de la ciudad en que se encuentra el capítulo |
| ciudad | caracter | Nombre de la ciudad en que se encuentra el capítulo |
| pais | caracter | Código ISO de dos letras del país en que se encuentra el capítulo |

#### `eventos_rladies`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| capitulo | caracter | Nombre del capítulo (R-Ladies + ciudad) |
| titulo_evento | caracter | Título del evento |
| fecha_local | fecha | Fecha en que se realizó |
| hora_local | hora | Hora local del evento |
| respuesta_asistire | entero | Cantidad de personas que respondieron "asistiré" |
| descripcion_evento | caracter | Descripción del evento |

## Fuente de los datos

Los datos fueron extraídos de la plataforma Meetup utilizando el paquete `meetupr`, que fue desarrollado por las RLadies [Gabriela de Queiroz](https://k-roz.com/), [Erin LeDell](https://www.stat.berkeley.edu/~ledell/), [Olga Mierzwa-Sulima](https://github.com/olgamie), [Lucy D’Agostino McGowan](https://www.lucymcgowan.com/) y [Claudia Vitolo](https://github.com/cvitolo). Este paquete permite extraer datos de la API de Meetup, por lo que puedes buscar información sobre cualquier evento organizado a través de ese sitio web (por ejemplo, los Grupos de Usuarios de R). La documentación del paquete (en inglés) se encuentra en [este enlace](https://github.com/rladies/meetupr).

## Inspiración

* [Gabriela de Queiroz](https://twitter.com/gdequeiroz), fundadora de RLadies, creó esta [aplicación en Shiny](https://gqueiroz.shinyapps.io/rshinylady/) que muestra todos los capítulos vigentes.
* Revisa [este post](https://github.com/yabellini/NubeDePalabras/blob/master/README.md) de [Yanina Bellini](https://twitter.com/yabellini) de [RLadies Santa Rosa](https://www.meetup.com/es/rladies-santa-rosa/), sobre cómo utilizó el paquete `meetupr` para generar una nube de palabras con los títulos de los eventos. En el post muestra todo el proceso que siguió (desde la extracción de datos a la visualización), por lo que es muy útil para entender cómo utilizar el paquete.
