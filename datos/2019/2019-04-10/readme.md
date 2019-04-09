# Partidos de la Copa del mundo de Fútbol. FIFA: Copas del mundo desde 1930 a 2018

Un listado de todos los partidos ocurridos en la copa del mundo de fútbol a lo largo de sus ediciones. 

Los datos fueron extraídos de: https://github.com/openfootball/world-cup

y transformados en: https://github.com/jas1/world-cup/tree/master/r


## Obtener los datos !

```
library(readr) # install.packages(readr)
partidos_fifa_copa_mundial_procesado <- readr::read_delim("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/blob/master/datos/2019/2019-04-10/partidos.txt",delim = "\t")

partidos_fifa_copa_mundial_crudo <- readr::read_delim("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/blob/master/datos/2019/2019-04-10/partidos_crudo.txt",delim = "\t")
```

## Diccionario de datos


### Diccionario partidos

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|anio           |entero              |Año del torneo mundial |
|anfitrion      |caracter            |Anfitrión del torneo mundial |
|estadio        |caracter            |Estadio donde se jugo el partido |
|ciudad         |caracter            |Ciudad donde se jugó el partido |
|partido_orden  |caracter            |Orden en el cuál se jugó el partido en el torneo |
|fecha          |fecha (fecha y-m-d) |Fecha del partido en el torneo |
|equipo_1       |caracter            |Equipo 1 en el partido |
|equipo_2       |caracter            |Equipo 2 en el partido |
|equipo_1_final |entero              |Resultado final del equipo 1 en el partido |
|equipo_2_final |entero              |Resultado final del equipo 2 en el partido |


### Diccionario de partidos sin procesar: 

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|anio           |entero              |Año del torneo mundial |
|anfitrion      |caracter            |Anfitrión del torneo mundial |
|partidos_crudo |caracter            |Linea de resultado de partido, se aconseja abrir el archivo en crudo para ver formato|


## Base de partidos procesada

## Consideraciones

Respecto de las variables: equipo_1_final y equipo_2_final ; 

se toma el resultado final del partido sin contar las etapas de empate ( salvo que se pueda empatar ).

ejemplos: 

#### si el partido fue resultado directo, 

ej: Francia - Mexico: 4-1 

entonces figura: 4-1

#### si el partido fue a tiempo extendido: 

ej: Francia - Italia: 

final 90 minutos: 1-1, 

final tiempo extendido: 1-0, 

entonces figura: 1-0


#### si el partido se definio por penales 

ej: Austria - Francia: 

final 90 minutos: 1-1, 

final tiempo extendido: 1-1, 

final penales: 3–2  ; 

entonces figura: 3-2 ( no se contaran donde hubo empates.)

## Base de partidos sin procesar: 

La base de datos de partidos sin procesar esta armada para que el que se anime y quiera practicar habilidades de transformacion de datos, pueda extraer de la misma. Es una version simplificada de la fuente original que se centra solo en los partidos. 

En esta base aparecen mas valores respecto de los resultados del partido.

Este archivo se encuentra en Inglés.


## Fuente original: 

Los datos fueron extraidos de: https://github.com/openfootball/world-cup
en esta base se encuentra mucha mas informacion respecto de cada edicion de la copa, como podrian ser los
datos de los jugadores de cada equipo en cada edicion. 

La fuente original se encuentra en Inglés.

## Inspiración

porque a veces cuesta saber para donde ir : 

Con visualizaciones que se pueden aproximar con estos datos: 

- https://www.mundodeportivo.com/md/futbol/estadisticas-mundial/grupod/index.html


Con tablas que se pueden aproximar con estos datos:

- http://www.losmundialesdefutbol.com/estadisticas.php


Dado que la adaptación de los datos no considera todos los goles algunos datos se van a aproximar no siendo exactos. Si se desea mayor exactitud se puede revisar la base sin procesar. 
Si se desean datos de los jugadores, se puede ver la fuente original.
Si hacen algo al respecto y desean compartirlo pueden crear issues en github.