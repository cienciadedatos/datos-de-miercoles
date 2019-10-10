# Datos sobre parlamentos

Esta semana exploraremos datos sobre parlamentos mundiales que entrega la [Unión Interparlamentaria](https://www.ipu.org/).

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

datos_uip <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-08/datos_uip.csv")

```

## Diccionario de datos


### `datos_uip`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|pais           |caracter              | Países incluidos en el dataset |
|camara      |caracter            | Si los datos corresponden a la cámara `alta`, `baja` o a la cámara `única`.  |
|porcentaje_mujeres        |numérica            | Porcentaje de mujeres en esa cámara (`NA` para el resto de las cámaras)|
|cuota_genero | caracter | Si existe o no cuota de género en esa cámara. (`NA` si no existe información) |
|edad_elegibilidad | numérica | Edad mínima requerida para postular a esa cámara (`NA` si no existe información)
| integrante_mas_joven | numérica | Integrante más joven en este momento (`NA` si no existe información)
| numero_integrantes | numérica | Número de integrantes en este momento (`NA` si no existe información)
| iso_pais | caracter | código ISO del país

## Consideraciones

La Unión Interparlamentaria no posee datos de todos los países en cada variable.


## Fuente original y adaptación

Este _dataset_ recoge algunos de los datos que se encuentran disponibles en la [plataforma de datos abiertos de la Unión Interparlamentaria](https://data.ipu.org/home). La selección y traducción al español estuvo a cargo de [Riva Quiroga](https://twitter.com/rivaquiroga).

## Inspiración

[Gabriela Matthieu](https://twitter.com/calcita13) creó una aplicación Shiny con los datos sobre mujeres en el parlamento (2000 - 2018) que presentó en [LatinR](latin-r.com) el año pasado.

* [Aplicación Shiny](https://calcita.shinyapps.io/women_in_politics)
* [Slides presentación LatinR](https://gitlab.com/calcita/Presenta_mep/blob/master/Presenta_mep.pdf)


## ¿Más datos?
La [plataforma de datos abiertos de la Unión Interparlamentaria](https://data.ipu.org/home) incluye más datos de los aquí seleccionados. ¿Quieres saber en qué año fue electa la primera mujer parlamentaria? ¿Te gustaría conocer el porcentaje de integrantes menores de 45 años o en qué países las elecciones son obligatorias? Puedes encontrar estos y otros datos en dicha plataforma.
