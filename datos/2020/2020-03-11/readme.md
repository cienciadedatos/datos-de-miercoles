# Datos sobre la pandemia de gripe H1N1 en 2009

La OMS acaba de declarar el cornavirus COVID-19 como pandemia. Esta semana exploraremos datos sobre la última pandemia, la de la gripe H1N1, con el fin de poder compararlas.


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

h1n1 <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-03-11/h1n1.csv")


```

## Diccionario de datos

#### `h1n1`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| pais | caracter | País afectado |
| casos | entero | Número de casos a la fecha |
| muertes | entero | Número de muertes a la fecha |
| fecha_actualizacion | fecha | Fecha de la actualización de los datos |


## Fuente original y adaptación
Los datos fueron extraídos de [Kaggle](https://www.kaggle.com/de5d5fe61fcaa6ad7a66/pandemic-2009-h1n1-swine-flu-influenza-a-dataset) y luego procesados y traducidos por el equipo de #datosdemieRcoles. La fuente original es la OMS.

## Inspiración

En estos enlaces puedes ver ejemplos de visualizaciones con datos similares:

* [Information is Beautiful](https://informationisbeautiful.net/2009/swine-flu-latest-visualized/)
* [Wired](https://www.wired.com/2015/04/see-diseases-spread-mesmerizing-graphics/)
