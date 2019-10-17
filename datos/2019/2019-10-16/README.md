
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

Como el set de datos no responde a los principios de orden de una variable por columna, una observación por fila y un valor por celda, incluimos el detalle de las variables incluidas en `variable`:

|Variable       |Descripción |
|:--------------|:-----------|
| empleadoras_mujeres | Porcentaje de empleadoras mujeres |
| empleadores_hombres | Porcentaje de empleadore hombres |
| empleo_agricultura_mujeres | Dentro de la fuerza laboral femenina, porcentaje que trabaja en agricultura |
| empleo_agricultura_hombres | Dentro de la fuerza laboral masculina, porcentaje que trabaja en agricultura |
| empleo_industria_mujeres | Dentro de la fuerza laboral femenina, porcentaje que trabaja en industria |
| empleo_industria_hombres | Dentro de la fuerza laboral masculina, porcentaje que trabaja en industria |
| empleo_servicios_mujeres | Dentro de la fuerza laboral femenina, porcentaje que trabaja en servicios |
| empleo_servicios_hombres | Dentro de la fuerza laboral masculina, porcentaje que trabaja en servicios |
| empleo_informal_mujeres | Porcentaje de mujeres en empleos informales (no vinculados a la agricultura)
| empleo_informal_hombres | Porcentaje de hombres en empleos informales (no vinculados a la agricultura)
| legislacion_acoso_sexual | Existencia de legislación laboral contra acoso sexual laboral (`1` = `sí`, `0` = `no`)
| autoempleo_mujeres | Mujeres trabajadoras por cuenta propia. Porcentaje dentro del total de la fuerza laboral femenina. 
| autoempleo_hombres | Hombres trabajadores por cuenta propia. Porcentaje dentro del total de la fuerza laboral masculina. 
| empleo_parcial_mujeres | Mujeres con trabajo a tiempo parcial. Porcentaje respecto del total de personas con trabajo a tiempo parcial. |
| dese  mpleo_educacion_mujeres | Mujeres desempleadas con estudios terciarios. Porcentaje respecto del total de la fuerza laboral femenina con estudios terciarios. | 
| desempleo_educacion_hombres | Hombres desempleados con estudios terciarios. Porcentaje respecto del total de la fuerza laboral masculina con estudios terciarios. 
| desempleo_mujeres | Mujeres desempleadas. Porcentaje respecto del total de la fuerza laboral femenina. |
| desempleo_hombres | Hombres desempleados. Porcentaje respecto del total de la fuerza laboral masculina. |
| trabajo_domestico_no_remunerado_mujeres | Porcentaje del día utilizado por mujeres en trabajo no remunerado doméstico y de cuidado. |
| trabajo_domestico_no_remunerado_hombres | Porcentaje del día utilizado por hombres en trabajo no remunerado doméstico y de cuidado. |


## Fuente de los datos

Los datos fueron extraídos del sitio web del [Banco Mundial](https://databank.worldbank.org/source/gender-statistics) y luego traducidos. 

## Inspiración

En [este enlace](https://ourworldindata.org/female-labor-force-participation-key-facts) puedes ver algunas visualizaciones de datos similares.
