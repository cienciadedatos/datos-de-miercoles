# Datos sobre vinos

Esta semana exploraremos datos sobre reseñas de vinos :wine_glass:


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

vinos <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-12/vinos.csv")


```

## Diccionario de datos

#### `vinos`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| pais | caracter | País de origen del vino |
| nombre | caracter | Nombre del vino |
| puntos | entero | Puntos con que fue calificado (escala de 1:100) |
| precio | entero | Precio de la botella, en dólares estadounidenses |
| provincia | caracter | Lugar de la que proviene el vino. En la mayoría de los casos, la provincia, la región o el nombre del valle. Traducida al español cuando se trata de países hispanoparlantes. |
| zona_1 | caracter | En algunos casos, información adicional sobre la zona de la que proviene el vino. Traducida al español cuando se trata de países hispanoparlantes. |
| zona_2 | caracter | En algunos pocos casos, más información adicional sobre la zona de la que proviene el vino. Traducida al español cuando se trata de países hispanoparlantes. |
| variedad | caracter | Variedad (por ejemplo, Pinot Noir, Cabernet Sauvignon, etc.) |
| vina | caracter | Nombre de la viña que produce el vino |
| titulo_resena| caracter | Título de la reseña. No están traducidos al español. En la mayoría de los casos indica el año de cosecha y el nombre del vino |


## Fuente original y adaptación
Los datos fueron extraídos de [Kaggle](https://www.kaggle.com/zynicide/wine-reviews) y luego traducidos. El dataset original incluye otras variables, como la reseña completa en inglés, el nombre de la persona que hizo la reseña, entre otras.

## Inspiración

Hace unas semanas estos datos se utilizaron en [Tidy Tuesday](https://github.com/rfordatascience/tidytuesday), la versión en inglés de este proyecto. Puedes darle una mirada a las visualizaciones que fueron compartidas por Twitter [en este enlace](https://twitter.com/search?l=&q=wine%20%23tidytuesday%20since%3A2019-05-28%20until%3A2019-06-04&src=typd)
