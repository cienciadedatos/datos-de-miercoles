
# Datos sobre Copas Mundiales de Fútbol Femenino

Esta semana analizaremos datos sobre las Copas Mundiales de Fútbol Femenino.

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
resultados_cmff <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-07-17/resultados_cmff.csv")
```

## Diccionario de datos

#### `resultados_cmff`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| anio | numérica | Año de la Copa Mundial |
| equipo | caracter | Equipo  |
| codigo_pais | caracter | Código ISO de 3 letras del país |
| ronda | caracter | Ronda/Fase dentro del torneo |
| resultado | caracter | Resultado final del encuentro `victoria`, `derrota`, `empate` |
| goles | numérica | Total de goles del equipo |
| id_partido_anio | numérica | Número del partido dentro del torneo de ese año |
| numero_equipo | numérica | Número del equipo en ese partido (`1` o `2`) |

## Fuente de los datos

Los datos fueron seleccionados por el equipo de [Tidy Tuesday](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-07-09),  la versión en inglés de este proyecto. La fuente original es el sitio web [data.world](https://data.world/sportsvizsunday/womens-world-cup-data). En ese sitio encontrarás más datos en inglés si te interesa profundizar.


## Inspiración

* Hace unas semanas datos similares a estos fueron utilizados en Tidy Tuesday, por lo que puedes darle una mirada a las visualizaciones que fueron compartidas [a través de Twitter](https://twitter.com/search?q=worldcup%20%23tidytuesday%20since%3A2019-07-09%20until%3A2019-07-15&src=typd)
