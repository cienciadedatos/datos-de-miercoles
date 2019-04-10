# Partidos de las Copas del Mundo de Fútbol (1930 a 2018)

Esta primera semana trabajaremos con datos de los partidos de todas las ediciones de la Copa del Mundo de fútbol masculino. Los datos fueron extraídos del repositorio sobre copas del mundo de [Open Public Domain Football Data](https://github.com/openfootball/world-cup). 


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:
```
# install.packages(readr)

partidos_fifa_copa_mundial_procesado <- readr::read_delim("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/blob/master/datos/2019/2019-04-10/partidos.txt",delim = "\t")

partidos_fifa_copa_mundial_crudo <- readr::read_delim("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/blob/master/datos/2019/2019-04-10/partidos_crudo.txt",delim = "\t")
```

## Diccionario de datos


### `partidos`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|anio           |entero              |Año de la copa mundial |
|anfitrion      |caracter            |Anfitrión de la copa mundial |
|estadio        |caracter            |Estadio donde se jugo el partido |
|ciudad         |caracter            |Ciudad donde se jugó el partido |
|partido_orden  |caracter            |Orden en el cual se jugó el partido en el torneo |
|fecha          |fecha (fecha y-m-d) |Fecha en que se jugó el partido |
|equipo_1       |caracter            |Equipo 1 en el partido |
|equipo_2       |caracter            |Equipo 2 en el partido |
|equipo_1_final |entero              |Resultado final del equipo 1 en el partido |
|equipo_2_final |entero              |Resultado final del equipo 2 en el partido |


### `partidos_crudo`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|anio           |entero              |Año de la copa mundial |
|anfitrion      |caracter            |Anfitrión de la copa mundial |
|partidos_crudo |caracter            |Muchas variables en una sola columna. Se aconseja abrir el archivo para explorar|


## Consideraciones

### Base procesada (`partidos`)

En el caso de las variables `equipo_1_final` y `equipo_2_final`, si se trata de un partido de eliminación directa solo se consigna el resultado final, sin considerar las instancias de empate. 

#### Ejemplos 

* __Resultado directo.__ Si el resultado a los 90 minutos fue Francia 4 - 1 México, entonces en la base figura como:

|`equipo_1_final` |`equipo_2_final` |
|:--------------|:---------------|
| `4` | `1`|


* __Resultado en alargue.__ Si el resultado a los 90 minutos fue Francia 1 - 1 Italia y en el tiempo extendido Francia anotó un gol, entonces el resultado final figura como:

|`equipo_1_final` |`equipo_2_final` |
|:--------------|:---------------|
| `2` | `1`|


* __Definición a penales.__ Si el resultado a los 90 minutos fue Austria 1 - 1 Francia, en el alargue nadie anotó goles y en penales anotaron 3 - 2, el resultado final solo consigna los penales: 

|`equipo_1_final` |`equipo_2_final` |
|:--------------|:---------------|
| `3` | `2`|

Dado que esta adaptación de los datos no considera todos los goles anotados en el partido, si te interesa obtener ese detalle puedes revisar la base sin procesar.

### Base de partidos sin procesar (`partidos_crudo`)

La base de datos de partidos sin procesar está diseñada para quienes se animen a practicar habilidades de limpieza y transformación de datos. Incluye más información que `partidos`, como resultados parciales o la hora del partido, en algunos casos. Los valores de las variables se encuentran en inglés. 


## Fuente original y adaptación

Como se señaló anteriormente, los datos fueron extraídos del repositorio sobre Copas del Mundo de [Open Public Domain Football Data](https://github.com/openfootball/world-cup). En ese repositorio puedes encontrar más información sobre cada edición de la copa, como quiénes fueron los jugadores de cada equipo, quiénes anotaron los goles, etc. Toda la información se encuentra en inglés. 
La adaptación acá publicada existe gracias al trabajo de procesamiento y transformación de los datos realizado por Julio Spairani. Puedes ver el código que utilizó [en este repositorio](https://github.com/jas1/world-cup/tree/master/r). 

## Inspiración

Si no sabes por dónde empezar, puedes mirar las propuestas de visualización de datos del mundial de Rusia 2018 publicadas por [Mundo Deportivo](https://www.mundodeportivo.com/md/futbol/estadisticas-mundial/grupoa/index.html). 
