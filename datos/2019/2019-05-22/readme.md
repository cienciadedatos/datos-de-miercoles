# Datos de la OMS sobre tuberculosis

Esta semana exploraremos un subconjunto de datos del informe anual de tuberculosis de la Organización Mundial de la Salud (OMS).

Este es un típico ejemplo de _data frame_ "ancho", en el que tenemos más de una variable por columna. Por lo tanto, ordenarlos para que estén en formato "largo" sería el primer desafío. Si te fijas, el _dataset_ tiene más de 56 columnas con datos sobre los casos de tuberculosis, pero las variables son realmente muchas menos: tipo de caso, tipo de diagnóstico, sexo del paciente y edad.

Las funciones del paquete `tidyr` pueden ayudarte a ordenar los datos. Revisa la documentación [acá](https://tidyr.tidyverse.org/).

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

tuberculosis_oms <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-22/tuberculosis_oms.csv")

```

O puedes instalar el paquete `datos` y obtenerlos directamente desde ahí:

```
# install.packages(remotes)
# remotes::install_github("cienciadedatos/datos")

library(datos)
oms

```


## Diccionario de datos


### `tuberculosis_oms`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| iso2 | caracter | código ISO de dos digitos del país
| iso3 | caracter | código ISO de tres digitos del país
| anio | caracter | año de la muestra
| nuevos_fpp_h014 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 0 a 14 años (014)
| nuevos_fpp_h1524 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 15 a 24 años (1524)
| nuevos_fpp_h2534 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 25 a 34 años (2534)
| nuevos_fpp_h3534 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 35 a 44 años (3544)
| nuevos_fpp_h4554 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 45 a 54 años (4554)
| nuevos_fpp_h5564 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 55 a 64 años (5564)
| nuevos_fpp_h65 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), hombres (h) de 65 o mas anos
| nuevos_fpp_m014 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 0 a 14 años (014)
| nuevos_fpp_m1524 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 15 a 24 años (1524)
| nuevos_fpp_m2534 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 25 a 34 años (2534)
| nuevos_fpp_m3534 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 35 a 44 años (3544)
| nuevos_fpp_m4554 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 45 a 54 años (4554)
| nuevos_fpp_m5564 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 55 a 64 años (5564)
| nuevos_fpp_m65 | entero | casos nuevos, diagnóstico frotis pulmonar positivo (fpp), mujeres (m) de 65 o mas anos
| nuevos_fpn_h014 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 0 a 14 años (014)
| nuevos_fpn_h1524 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 15 a 24 años (1524)
| nuevos_fpn_h2534 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 25 a 34 años (2534)
| nuevos_fpn_h3534 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 35 a 44 años (3544)
| nuevos_fpn_h4554 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 45 a 54 años (4554)
| nuevos_fpn_h5564 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 55 a 64 años (5564)
| nuevos_fpn_h65 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), hombres (h) de 65 o mas anos
| nuevos_fpn_m014 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 0 a 14 años (014)
| nuevos_fpn_m1524 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 15 a 24 años (1524)
| nuevos_fpn_m2534 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 25 a 34 años (2534)
| nuevos_fpn_m3534 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 35 a 44 años (3544)
| nuevos_fpn_m4554 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 45 a 54 años (4554)
| nuevos_fpn_m5564 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 55 a 64 años (5564)
| nuevos_fpn_m65 | entero | casos nuevos, diagnóstico frotis pulmonar negativo (fpn), mujeres (m) de 65 o mas anos
| nuevos_ep_h014 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 0 a 14 años (014)
| nuevos_ep_h1524 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 15 a 24 años (1524)
| nuevos_ep_h2534 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 25 a 34 años (2534)
| nuevos_ep_h3534 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 35 a 44 años (3544)
| nuevos_ep_h4554 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 45 a 54 años (4554)
| nuevos_ep_h5564 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 55 a 64 años (5564)
| nuevos_ep_h65 | entero | casos nuevos, diagnóstico extrapulmonar (ep), hombres (h) de 65 o mas anos
| nuevos_ep_m014 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 0 a 14 años (014)
| nuevos_ep_m1524 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 15 a 24 años (1524)
| nuevos_ep_m2534 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 25 a 34 años (2534)
| nuevos_ep_m3534 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 35 a 44 años (3544)
| nuevos_ep_m4554 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 45 a 54 años (4554)
| nuevos_ep_m5564 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 55 a 64 años (5564)
| nuevos_ep_m65 | entero | casos nuevos, diagnóstico extrapulmonar (ep), mujeres (m) de 65 o mas anos
| nuevosrecaida_h014 | entero | nuevas recaídas, hombres (h) de 0 a 14 años (014)
| nuevosrecaida_h1524 | entero | nuevas recaídas, hombres (h) de 15 a 24 años (1524)
| nuevosrecaida_h2534 | entero | nuevas recaídas, hombres (h) de 25 a 34 años (2534)
| nuevosrecaida_h3534 | entero | nuevas recaídas, hombres (h) de 35 a 44 años (3544)
| nuevosrecaida_h4554 | entero | nuevas recaídas, hombres (h) de 45 a 54 años (4554)
| nuevosrecaida_h5564 | entero | nuevas recaídas, hombres (h) de 55 a 64 años (5564)
| nuevosrecaida_h65 | entero | nuevas recaídas, hombres (h) de 65 o mas anos
| nuevosrecaida_m014 | entero | nuevas recaídas, mujeres (m) de 0 a 14 años (014)
| nuevosrecaida_m1524 | entero | nuevas recaídas, mujeres (m) de 15 a 24 años (1524)
| nuevosrecaida_m2534 | entero | nuevas recaídas, mujeres (m) de 25 a 34 años (2534)
| nuevosrecaida_m3534 | entero | nuevas recaídas, mujeres (m) de 35 a 44 años (3544)
| nuevosrecaida_m4554 | entero | nuevas recaídas, mujeres (m) de 45 a 54 años (4554)
| nuevosrecaida_m5564 | entero | nuevas recaídas, mujeres (m) de 55 a 64 años (5564)
| nuevosrecaida_m65 | entero | nuevas recaídas, mujeres (m) de 65 o mas años


## Fuente original y adaptación

Los datos provienen del sitio web oficial de la [Organización Mundial de la Saluds](http://www.who.int/tb/country/data/download/en/). La submuestra corresponde a uno de los _dataset_ de ejemplo del paquete `tidyr`.

Esta versión en español es parte `datos`, el paquete con la traducción de todos los _datasets_ que se utilizan en ["R para Ciencia de Datos"](https://es.r4ds.hadley.nz/) (Wickham & Grolemund, 2017). El paquete  está siendo desarrollado por [Edgar Ruiz](https://twitter.com/theotheredgar), [Riva Quiroga](https://twitter.com/rivaquiroga), [Mauricio 'Pacha' Vargas](https://twitter.com/pachamaltese) y [Mauro Lepore](https://twitter.com/mauro_lepore). Si quieres saber más sobre este paquete, puedes revisar [su sitio web](https://cienciadedatos.github.io/datos/).


## Inspiración e información

Ejemplos de visualizaciones:
* [mapa interactivo de muertes por tuberculosis](https://ourworldindata.org/grapher/tuberculosis-death-rates?time=1990..2017)
* [sobre datos relacionados con la tuberculosis](https://ourworldindata.org/eradication-of-diseases#tuberculosis-eradication-efforts)
* [sobre datos de salud en general](http://www.healthdata.org/results/data-visualizations)

En este [breve artículo en español](https://www.who.int/es/news-room/fact-sheets/detail/tuberculosis) de la OMS puedes conocer información básica y algunos datos actuales sobre la tuberculosis en el mundo.
