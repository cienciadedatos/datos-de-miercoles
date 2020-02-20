# Datos sobre ranking de películas

Esta semana exploraremos datos sobre valoraciones de películas en el sitio web [IMDB](https://https://www.imdb.com) (Internet Movie Data Base) registradas hasta mediados de 2018.


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

imdb <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-02-17/ranking_imdb.csv")


```

## Diccionario de datos

#### `imdb`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| ranking | entero | Posición de la película en el ranking de IMDB |
| titulo | caracter | Título de la película en inglés |
| anio | entero | Año de estreno |
| puntaje | entero | Puntaje de la película (escala de 1 a 10) |
| genero | caracter | Género o géneros al que pertenece la película |
| votos | entero | Cantidad de votos recibidos |
| direccion | caracter | Nombre del o la director/a |
| duración | entero | Duración en minutos |
| ganancias | entero | Ganancias de la película en millones de dólares |


## Fuente original y adaptación
Los datos fueron extraídos de [Kaggle](https://www.kaggle.com/isaactaylorofficial/imdb-10000-most-voted-feature-films-041118/data) y luego procesados y traducidos por el equipo de #datosdemieRcoles.

## Inspiración

En estos enlaces puedes ver ejemplos de visualizaciones con datos similares:

* [Blog Towards Data Science](https://towardsdatascience.com/exploring-movie-data-with-interactive-visualizations-c22e8ce5f663)
* [100 greatest movies data visualization](https://www.behance.net/gallery/44767671/100-Greatest-Movies-Data-Visualization)
* [Top 10 changes sinces 1966](https://digg.com/2019/how-the-top-10-movies-on-imdb-have-changed-since-1996)
