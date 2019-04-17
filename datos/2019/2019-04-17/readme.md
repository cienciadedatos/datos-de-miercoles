# Juego de Tronos

Estrenaron la última temporada de _Game of Thrones_ y no podíamos perder esta oportunidad para hacer algo en R mientras esperamos que llegue el próximo domingo. Para esta semana tenemos tres conjuntos de datos, que esperamos hagan felices tanto a quienes prefieren la serie como para quienes son fieles el libro:

* Cambio en las lealtades de los personajes a lo largo de las distintas temporadas de la serie (temporadas 1 a 7)
* Minutos de aparición y cantidad de capítulos en pantalla de los personajes de la series (temporadas 1 a 6)
* Información sobre los libros en los que aparece cada personaje y su estado vital (:skull:)

<p align="center">
![](https://github.com/rivaquiroga/datos-de-miercoles/blob/master/datos/2019/2019-04-17/spoilers.gif)
</p>



## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:
```
# install.packages(readr)

tiempo_pantalla <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-04-17/tiempo_pantalla.csv")

cambio_lealtades <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-04-17/cambio_lealtades.csv")

personajes_libros <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-04-17/personajes_libro.csv")

```

## Diccionario de datos


### `tiempo_en_pantalla`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|nombre           |caracter              |Nombre del personaje |
|minutos_pantalla      |numérico            |Cantidad de minutos en pantalla (temporadas 1 a 6) |
|episodios        |numérico            |Cantidad de episodios en que ha aparecido (temporadas 1 a 6) |


### `cambio_lealtades`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|nombre           |caracter              |Nombre del personaje |
|origen      |caracter            |Casa/grupo al que pertenece |
|fin_t1 |caracter            |Lealtad al finalizar la temporada 1|
|fin_t2 |caracter            |Lealtad al finalizar la temporada 2|
|fin_t3 |caracter            |Lealtad al finalizar la temporada 3|
|fin_t4 |caracter            |Lealtad al finalizar la temporada 4|
|fin_t5 |caracter            |Lealtad al finalizar la temporada 5|
|fin_t6 |caracter            |Lealtad al finalizar la temporada 6|
|fin_t7 |caracter            |Lealtad al finalizar la temporada 7|
|episodios        |numérico            |Cantidad de episodios en que ha aparecido (temporadas 1 a 7) |

### `personajes_libros`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|nombre           |caracter              |Nombre del personaje |
|lealtad      |caracter            |Casa/grupo al que es leal |
|género |caracter            |género del personaje|
|noble |caracter            |Estatus nobiliario (`1 = noble`; `0 = no`)|
|juego de tronos |caracter            |Si aparece o no en este libro de la saga (`1 = sí`; `0 = no`)|
|choque de reyes |caracter            |Si aparece o no en este libro de la saga (`1 = sí`; `0 = no`)|
|festin de cuervos |caracter            |Si aparece o no en este libro de la saga (`1 = sí`; `0 = no`)|
|danza_de_dragones |caracter            |Si aparece o no en este libro de la saga (`1 = sí`; `0 = no`)|
|capitulo_presentacion |caracter            |Si aparece o no en este libro de la saga (`1 = sí`; `0 = no`)|
|anio_muerte        |entero            |Año en que murió (solo para algunos personajes)
|libro_muerte        |entero            |Libro de la saga en que muere (`1 = Juego de Tronos`, `2 = Choque de Reyes`, etc.) |
|capitulo_muerte        |entero            |En qué capítulo de ese libro muere  |


## Consideraciones

Hay cientos de personajes. Solo tradujimos los nombres de aquellos que tienen más presencia en el libro y en la serie.

## Fuente original y adaptación

Los datos fueron extraídos de tres fuentes distintas:
* Cambio en las lealtades > [Matthew Lunkes](https://github.com/MattLunkes/GoT_Affiliations)
* Tiempo en pantalla de los personajes > [data.world](https://data.world/aendrew/game-of-thrones-screen-times)
* Personajes del libro > [Kaggle](https://www.kaggle.com/mylesoneill/game-of-thrones)


La traducción de los datos estuvo a cargo de [Riva Quiroga](twitter.com/rivaquiroga). Si prefieres trabajar con una base que tenga los nombres de las variables en español, pero que mantenga los nombres originales de los personajes, puedes revisar [este repositorio](https://github.com/rivaquiroga/para-datos-de-miercoles/tree/master/semana2_GOT).

## Inspiración

Si no sabes por dónde empezar, puedes mirar algunas propuestas de visualización que se han hecho con estos y otros datos.
* [Artículo en español](https://www.xataka.com/cine-y-tv/este-fantastico-grafico-muestra-que-personajes-de-juego-de-tronos-aparecen-mas-en-pantalla) que incluye un gráfico sobre el tiempo en pantalla de los personajes.
* [Artículo en inglés](https://medium.com/@matthewlunkes/a-game-of-data-visualizations-243c3d8ceb1e) con visualización de los cambios en las lealtades. La visualización del artículo no está hecha en R, pero hay sugerencias sobre qué paquetes utilizar para replicarla.
