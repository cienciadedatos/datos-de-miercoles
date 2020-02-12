# Casos de Nuevo Coronavirus (2019-nCoV)

En las últimas semanas el brote de coronavirus (2019-nCoV) ha hecho noticia alrededor del mundo. Esta semana en #datosdemieRcoles analizaremos los datos disponible sobre casos reportados, muertes y personas que se han recuperado.

NOTA: En esta ocasión no hemos traducido los nombres de las variables ni los valores ya que la propuesta es descargar los datos de la fuente original, que se actualiza dos veces al día. De esta forma nos aseguramos que cuando decidas utilizarlos podrás acceder a la última versión.


## Obtener los datos

```r
# install.packages("readr")

confirmados <- readr::read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/time_series/time_series_2019-ncov-Confirmed.csv")

muertes <- readr::read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/time_series/time_series_2019-ncov-Deaths.csv")

recuperados <- readr::read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/time_series/time_series_2019-ncov-Recovered.csv")

```

## Sobre los datos

Los tres set de datos contienen las mismas variables:

* Province/State (Provincia/Estado)
* Country/Region (País/Región)
* Lat (Latitud)
* Long (Longitud)
* Una columna con la fecha de cada nuevo reporte de casos. Es decir, es un set de datos en formato "ancho".


## Fuente de los datos
Los datos fueron obtenidos desde el [repositorio oficial](https://github.com/CSSEGISandData/COVID-19) del Centro para Ciencia de Sistemas e Ingeniería (CCSE) de la Universidad John Hopkins. Estos set de datos se actualizan diariamente.

## Inspiración

* [Tablero desarrollado por la Univrsidad John Hopkins](https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6)
* [Visualización ofrecida por Mapas de Google]((https://www.google.com/maps/d/u/0/viewer?mid=1S0vCi3BA-7DOCS13MomK7KebkPsvYl8C&shorturl=1&ll=-3.3633111419268915%2C173.73737789082725&z=2))
* [Aplicación Shiny que reporta estos mismos datos más lo de dos otras fuentes](https://coronavirus.john-coene.com/)


## Más acerca del nuevo coronavirus

En la página de la [Organización Mundial de la Salud](https://www.who.int/es/emergencies/diseases/novel-coronavirus-2019) puedes encontrar más información sobre este brote.
