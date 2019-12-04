Constitución Abierta: Una Nueva Constitución Para Chile
================
Pachá
10/23/2019

# Introducción

Durante el año 2016, en Chile se llevó a cabo un proceso de consulta a
los ciudadanos chilenos con la finalidad de conocer sus principales
preocupaciones y cómo llevar estas a una nueva Constitución Política de
la República.

Inicialmente el proceso de consulta fue llevado a cabo con poca
transparencia, pero afortunadamente la presión de la sociedad civil
llevó a hacer disponibles públicamente las actas de estos encuentros de
debate ciudadano.

La forma de reunir las opiones fue registrar actas de encuentros en los
cuales los vecinos de distintas comunas del país se reunieron a debatir
y manifiestar sus puntos de acuerdo y desacuerdo respecto de Derechos
Humanos, Salud, Educación, Pensiones, entre otros.

El sitio web del proyecto Constitución Abierta (DCC UChile) establecía
que: “Los datos del Proceso Constituyente deben estar disponibles
abiertamente para todas y todos los chilenos.”

Estos datos provienen de un proceso impulsado por el Departamento de
Ciencias de la Computación de la Universidad de Chile, el cual se dedicó
a reunir de manera paralela las actas de las instancias de
participación.

# Paquetes

Sugerimos usar el tidyverse para manipular y visualizar los datos. Para
visualizar usando mapas, se podría usar el paquete `chilemaps`
disponible en github.com/pachamaltese/chilemaps.

``` r
library(tidyverse)
```

    ## -- Attaching packages -------------------------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.2.1     v purrr   0.3.2
    ## v tibble  2.1.3     v dplyr   0.8.3
    ## v tidyr   0.8.3     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.4.0

    ## -- Conflicts ----------------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

# Datasets

Contienen los conceptos clave discutidos y la justificación de los
acuerdos o desacuerdos.

## Conceptos

Resume los tópicos tratados durante las reuniones, si hubo acuerdo o no
y su justificación. Incluye los datos geográficos (comuna y región) del
lugar de encuentro.

``` r
load("~/datos-de-miercoles/datos/2019/2019-10-23/01-conceptos.rdata")
conceptos
```

    ## # A tibble: 230,866 x 9
    ##    idELA concepto acuerdo justificacion fecha               id_comuna
    ##    <int> <chr>    <chr>   <chr>         <dttm>              <chr>    
    ##  1 10749 Democra~ Acuerdo -Es condició~ 2016-05-15 12:36:00 13120    
    ##  2 10749 Diversi~ Acuerdo - Diversidad~ 2016-05-15 12:36:00 13120    
    ##  3 10749 Igualdad Acuerdo - Es condici~ 2016-05-15 12:36:00 13120    
    ##  4 10749 Justici~ Acuerdo Se entiende ~ 2016-05-15 12:36:00 13120    
    ##  5 10749 Sustent~ Acuerdo "- Se refier~ 2016-05-15 12:36:00 13120    
    ##  6 10749 Derecho~ Acuerdo Los derechos~ 2016-05-15 12:36:00 13120    
    ##  7 10749 Libertad Acuerdo "- Se relaci~ 2016-05-15 12:36:00 13120    
    ##  8 10749 A la pa~ Acuerdo - Se expresa~ 2016-05-15 12:36:00 13120    
    ##  9 10749 Liberta~ Acuerdo - El ejercic~ 2016-05-15 12:36:00 13120    
    ## 10 10749 A la sa~ Acuerdo - Salud públ~ 2016-05-15 12:36:00 13120    
    ## # ... with 230,856 more rows, and 3 more variables: comuna <chr>,
    ## #   id_region <chr>, region <chr>

La columna `idELA` permite unir con la tabla `memoria`.

## Memoria

Sintetiza el ánimo sostenido durante el encuentro.

``` r
load("~/datos-de-miercoles/datos/2019/2019-10-23/02-memoria.rdata")
memoria
```

    ## # A tibble: 6,751 x 2
    ##    idELA texto                                                             
    ##    <int> <chr>                                                             
    ##  1 10749 Antes de partir todos/as los/as participantes declararon cuáles e~
    ##  2  5857 1) HUBO ACUERDO GENERAL EN EL GRUPO, DE QUE NO SERÍA NECESARIO CR~
    ##  3  7715 Más allá de que esta instancia logre ser vinculante o no en la re~
    ##  4  4974 este proceso fomenta la participacion, la inclusion de todos los ~
    ##  5  1560 El derecho a sufragio debe ser obligatorio para mayores de 18 año~
    ##  6  8862 "Consideramos que la mayor parte de los temas tratados en la jorn~
    ##  7  7844 Por una Constitución Debatida en Democracia para las Nuevas Gener~
    ##  8 12400 nos gusto discutir sobre la futura constitucion de chile.queremos~
    ##  9 13611 .                                                                 
    ## 10 15283 fue una experiencia bastante buena, aunque se necesita un interes~
    ## # ... with 6,741 more rows
