
# Datos Empleo y género

Esta semana analizaremos datos del Banco Mundial sobre (des)empleo y género para algunos países de Latinoamérica y el Caribe. Los datos no están "ordenados", es decir, es un _data frame_ ancho, por lo que es una excelente oportunidad para utilizar el paquete {tidyr} y las nuevas funciones `pivot_longer()` y `pivot_wider()` (o, si prefieres, sus antecesores: `spread()` y `gather()`).

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
empleo_genero <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-10-16/empleo_genero.csv")
```

## Diccionario de datos

#### `empleo_genero`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| variable | caracter | Variable medida. Ver la siguiente tabla para el detalle |
| pais_region | caracter | Nombre del país o de la región (por ejemplo, "Latinoamérica y el Caribe")  |
| codigo_pais_region | caracter | Código ISO de tres letras del país o la región  |
| 1970... | caracter | Como se trata de un _data frame_ ancho, los años para los que se tienen valores (1970 a 2018) se encuentran en las columnas  |

#### `empleo_genero$variable`

Detalle de las variables incluidas en `variables`:

|Variable       |Descripción |
|:--------------|:-----------|
| empleadoras_mujeres | Porcentaje de empleadoras mujeres
| empleadores_hombres | Porcentaje de empleadore hombres
| empleo_agricultura_mujeres |
| empleo_agricultura_hombres |
| empleo_industria_mujeres  |
| empleo_industria_hombres |
| empleo_servicios_mujeres |
| empleo_servicios_hombres |
| empleo_informal_mujeres |
| empleo_informal_hombres |
| legislacion_acoso_sexual |
| autoempleo_mujeres |
| autoempleo_hombres |
| empleo_parcial_mujeres |
| desmpleo_educacion_mujeres |
| desempleo_educacion_hombres |
| desempleo_mujeres |
| desempleo_hombres |
| empleo_vulnerable_mujeres |
| empleo_vulnerable_hombres |
| asalariadas_mujeres |
| asalariados_hombres |
| trabajo_domestico_no_remunerado_mujeres |
| trabajo_domestico_no_remunerado_hombres |


## Fuente de los datos

Los datos fueron extraídos del sitio web del [Banco Mundial](https://databank.worldbank.org/source/gender-statistics) y luego traducidos. 

## Inspiración

En [este enlace](https://ourworldindata.org/female-labor-force-participation-key-facts) puedes ver algunas visualizaciones de datos similares.
