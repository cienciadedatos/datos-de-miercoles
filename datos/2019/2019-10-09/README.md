# Datos meteorológicos de Argentina y Paraguay

Esta semana tenemos datos de temperatura y precipitación de estaciones de la cuenca del Río de la Plata.

## Sobre los datos

Son dos datasets: uno con las coordenadas de las estaciones y otro con con los datos en sí. 

## Obtener los datos

```r
# install.packages("readr")
estaciones <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-09/estaciones.csv")
meteo <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-02/meteo.csv")
```

## Diccionario de datos

#### `estaciones`

|Variable            |Clase    |Descripción         |
|:-------------------|:--------|:-------------------|
|id_estacion                  |numérica  | Identificador de estación |
|lat     | numérica  | Latitud |
|lon           |numérica  | Longitud |
|elevacion               |numérica  | Altura en metros sobre el nivel del mar|
| nombre | caracter | Nombre de la estación |
| pais | caracter | País al que pertenece la estación. |
| institucion | caracter | Institución a la que pertenece la estación. |


#### `meteo`

|Variable            |Clase    |Descripcion         |
|:-------------------|:--------|:-------------------|
|id_estacion                  |numérica  | Identificador de estación |
| fecha | fecha | Fecha de a observación |
| precipitacion | numérico | Precipitación observada en milímetros |
| t_max | numérico | Temperatura máxima diaria en grados centígrados |
| t_min | numérico | Temperatura mínima diaria en grados centígrados |

### Fuente de datos

Los datos provienen de la base de datos [Claris LPB](http://www.cima.fcen.uba.ar/ClarisLPB/).


