
# Datos sobre emisiones de CO2

Esta semana analizaremos datos históricos de emisión de CO2 por país y región. ¿Qué países son los mayores emisores de CO2? ¿Cuáles han aumentado en mayor medida sus emisiones? ¿Contaminan más los países según su ingreso?

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
co2 <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-08-21/co2.csv")


co2_ingreso <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-08-21/co2_ingreso.csv")
```

## Diccionario de datos

#### `co2`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| pais_region | caracter | Nombre del país o de la región (por ejemplo, Latinoamérica, Unión Europea, Mundo, etc.) |
| codigo_iso | caracter | Código ISO del país o región |
| anio | entero | Año  |
| emision_co2 | entero | Emisión de CO2 (toneladas métricas per cápita) |


#### `co2_ingreso`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| grupo | caracter | Grupos de países según ingreso: `Ingreso alto`, `Ingreso medio-alto`, `Ingreso medio`, etc. Clasificación del Banco Mundial |
| codigo_iso | caracter | Código ISO del grupo |
| anio | entero | Año  |
| emision_co2 | entero | Emisión de CO2 (toneladas métricas per cápita) |

## Fuente de los datos

La fuente de los datos es el [Banco Mundial](https://www.cato.org/human-freedom-index-new). El _dataset_ fue extraído de la versión disponible en [data.world](https://data.world/makeovermonday/2019w22) y luego traducido.

## Inspiración

En [este enlace](https://www.makeovermonday.co.uk/week-22-2019/) puedes ver algunas visualizaciones en las que se utilizaron datos similares.
