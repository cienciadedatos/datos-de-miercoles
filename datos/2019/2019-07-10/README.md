
# Datos sobre Pokémon

Esta semana analizaremos datos de la franquicia Pokémon. El _dataset_ contiene datos sobre las características de 800 pokémon.

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
pokemon <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-07-10/pokemon.csv")
```

## Diccionario de datos

#### `pokemon`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| ID_poke | numérica | ID de cada pokémon |
| nombre_ingles | caracter | Nombre en inglés (del _dataset_ original)  |
| nombre_traducido | caracter | Nombre en español |
| tipo_1 | caracter | Tipo de pokémon |
| tipo_2 | caracter | Algunos pokémon son de dos tipos. Para el resto, esta variable aparece como `NA` |
| total | numérica | Suma de todos los puntajes de las variables de velocidad, ataque, defensa y puntos de vida. Suele utilizarse como indicador de qué tan fuerte es un pokémon |
| puntos_vida | numérica | Cantidad de daño que puede resistir |
| ataque | numérica | Daño en ataques normales |
| defensa | numérica | Resistencia al daño ante ataques normales  |
| fuerza_especial_ataque | numérica | Daño en ataques especiales |
| fuerza_especial_defensa | numérica | Resistencia al daño por ataques especiales |
| velocidad | numérica | Determina qué pokémon ataca primero en cada ronda |
| generacion | numérica | Número de generación |
| es_legendario | caracter | Si es legendario (`verdadero`) o no (`falso`) |
| nivel_evolucion | numérica | Estado de evolución de 1 a 3 (`NA`) para pokémones de forma única |  

## Fuente de los datos

Los datos fueron obtenidos desde [Kaggle](https://www.kaggle.com/abcsds/pokemon) y la [Pokémon Database](https://pokemondb.net/evolution). El _dataset_ fue propuesto, traducido y editado por [Gonzalo Fichero](https://twitter.com/Ficheroculto).


## Inspiración

* [Post](http://rpubs.com/jboscomendoza/redes-relacionales-con-r-tipos-de-pokemon) con el paso a paso sobre cómo crear grafos usando datos similares.
* Puedes darle una mirada al [dashboard](http://jkunst.com/flexdashboard-highcharter-examples/pokemon/) que realizó [Joshua Kunst](https://twitter.com/jbkunst), parte de la comunidad de R de Latinoamérica, con datos similares. En [este enlace](http://jkunst.com/blog/posts/2016-03-08-pokemon-vizem-all/) puedes ver el código que utilizó para obtener los datos, procesarlos y visualizarlos.
