# Índice de libertad de prensa

Esta semana revisaremos datos del Índice de Libertad de Prensa que confecciona cada año la asociación de Reporteros Sin Fronteras.


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

libertad_prensa <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-03-25/libertad_prensa.csv")


```

## Diccionario de datos

#### `libertad_prensa`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| codigo_iso | caracter | Código ISO del país |
| pais | caracter | País |
| anio | entero | Año del resultado |
| indice | entero | Puntaje Índice Libertad de Prensa (menor puntaje = mayor libertad de prensa) |
| ranking | entero | Ranking Libertad de Prensa |


## Fuente original y adaptación
Los datos fueron extraídos de [The World Bank](https://tcdata360.worldbank.org/indicators/h3f86901f?country=BRA&indicator=32416&viz=line_chart&years=2001,2019) y luego procesados y traducidos por el equipo de #datosdemieRcoles. La fuente original es [Reporteros sin Fronteras](https://www.rsf-es.org/). En [este enlace](https://rsf.org/es/metodologia-detallada) puedes revisar la metodología con que se construye el índice y conocer algunas formas de clasificación de los países según su puntaje.

## Inspiración

En estos enlaces puedes ver algunas visualizaciones de los resultados:

* [Visualización resultados 2019 RSF](https://www.rsf-es.org/grandes-citas/clasificacion-por-paises/)
* [Análisis resultados 2019](https://www.rsf-es.org/news/clasificacion-mundial-2019-de-la-libertad-de-prensa-de-rsf/)
