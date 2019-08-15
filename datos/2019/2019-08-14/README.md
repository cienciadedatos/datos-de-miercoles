
# Datos sobre el Índice de Libertad

Esta semana analizaremos datos sobre el Índice de Libertad Humana. ¿En qué países hay mayores libertades? ¿Qué regiones han mejorado su índice en los últimos años?

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
libertad <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-08-14/libertad.csv")
```

## Diccionario de datos

#### `libertad`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| anio | entero | Año  |
| codigo_iso | caracter | Código ISO del país |
| pais | caracter | Nombre del país |
| region | caracter | Nombre de la región en la que se ubica el país |
| libertad_humana_puntaje | entero | Puntaje Libertad Humana. Valores entre `0` y `10`. Mientras mayor el valor, mayor libertad |
| libertad_humana_ranking | entero | Ubicación del país en el ranking de Libertad Humana |
| libertad_personal_puntaje | entero | Puntaje Libertad Personal. Puntaje Libertad Humana. Valores entre `0` y `10`. Mientras mayor el valor, mayor libertad |
| libertad_personal_ranking | entero | Ubicación del país en el ranking de Libertad Personal |
| libertad_economica_puntaje | entero | Puntaje Libertad Económica. Puntaje Libertad Humana. Valores entre `0` y `10`. Mientras mayor el valor, mayor libertad |
| libertad_economica_ranking | entero | Ubicación del país en el ranking de Libertad Económica |

## Fuente de los datos

Los datos fueron extraídos de [Human Freedom Index](https://www.cato.org/human-freedom-index-new) y luego traducidos. Si quieres revisar el detalle sobre cómo se midió cada variable, puedes revisar [este documento](https://object.cato.org/sites/cato.org/files/human-freedom-index-files/human-freedom-index-2018-revised.pdf).
La base completa considera más de 70 variables que permiten construir cada uno de los índices. Si te interesa el detalle, puedes descargarla en formato `xlsx` desde la página de Human Freedom Index.

## Inspiración

En [este enlace](https://imco.org.mx/temas/indice-libertad-mundo-2019-via-freedom-house/) puedes ver algunas visualizaciones en las que se utilizaron estos mismos datos o la variables incluidas en la base completa.
