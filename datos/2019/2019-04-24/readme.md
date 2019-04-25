# Gapminder

Esta semana exploraremos datos históricos sobre algunas variables de desarrollo que son parte del proyecto [Gapminder](https://www.gapminder.org/).

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

gapminder <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-04-24/gapminder_es.csv")

```

## Diccionario de datos


### `gapminder_es`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|pais           |factor              |Países incluidos en esta selección de datos (142 niveles) |
|continente      |factor            |Continente en que se encuentra el país (5 niveles) |
|anio        |entero            |Desde 1952 a 2007. Datos cada 5 años |
|esperanza_de_vida | numérica | Esperanza de vida al nacer, en años |
|poblacion | entero | Población
|pib_per_capita | numérica | PIB per cápita (en dólares estadounidenses, ajustados según inflación)


## Fuente original y adaptación

Los datos son una traducción de los que se encuentran en el paquete `gapminder` creado por [Jenny Bryan](https://twitter.com/JennyBryan). Esta versión en español es parte del proyecto de traducción de ["R para Ciencia de Datos"](https://es.r4ds.hadley.nz/) (Wickham & Grolemund, 2017), que incluye un paquete (`datos`) con la traducción de todos los datasets que se utilizan en el libro. El paquete `datos` está siendo desarrollado por [Edgar Ruiz](https://twitter.com/theotheredgar), [Riva Quiroga](https://twitter.com/rivaquiroga) y [Mauricio 'Pacha' Vargas](https://twitter.com/pachamaltese) en este [repositorio](wwww.github.com/cienciadedatos/datos). Puedes instalarlo así:

```
# install.packages(devtools)

devtools::install_github("cienciadedatos/datos")

```

Los datos en español de Gapminder aparecen en este paquete como `paises`.

## Inspiración

Puedes ver algunas de las charlas TED de Hans Rosling, creador del proyecto Gapminder, para inspirarte. Tienen la opción de subtítulos en distintos idiomas:

[![ver video](https://pi.tedcdn.com/r/talkstar-assets.s3.amazonaws.com/production/playlists/playlist_474/2d21d632-4d8c-4555-b38b-41caa4419e8e/best_hans_talks_1200x627.jpg?quality=89&w=1200)](https://youtu.be/vt5fpE0bzSY)

[Imagen: ted.com]


## ¿Más datos?
En el sitio web de [Gapminder](https://www.gapminder.org/) puedes encontrar más datos en caso de que te interese profundizar.
