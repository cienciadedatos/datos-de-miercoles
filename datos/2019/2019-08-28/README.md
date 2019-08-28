
# Datos de estaciones de bicicletas públicas en Buenos Aires

Esta semana analizaremos datos del [sistema público de bicicletas de la Ciudad de Buenos Aires](https://es.wikipedia.org/wiki/EcoBici_(Buenos_Aires)). El sistema consiste en unas 400 estaciones donde se anclan las bicicletas. Las bicis estacionadas pueden estar disponibles para ser retiradas o bloqueadas esperando reparación. A su vez, cada estación tiene espacios disponibles donde se pueden estacionar más bicicletas y espacios bloqueados por desperfectos. 

¿En qué horas hay más bicicletas disponibles? ¿Cuándo hay más bicicletas en uso? ¿Cuántas bicicletas hay en total? ¿Qué estaciones se usan más y en qué momentos del día? ¿Hay diferencias entre días de semana y fines de semana?

## Obtener los datos

El set de datos `estaciones` tiene los datos "estáticos" con la posición de cada estación y su capacidad. El set `bicicletas` tiene la información del estado de las estaciones sampleados cada 15 minutos.

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")

estaciones <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-08-28/estaciones.csv")

bicicletas <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-08-28/bicicletas.csv")
```

## Diccionario de datos

#### `estaciones`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| id_estacion | entero | Número de identificación de la estación |
| capacidad  | entero | Cantidad total de espacios | 
| lon | numérico | Longitud en la que se encuentra la estación |
| lat | numérico | Latitud en la que se encuentra la estación |


#### `bicicletas`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| tiempo   | fecha_hora  | Momento de la observación |
| id_estacion | entero | Número de identificación de la estación |
| bicis_disponibles | entero | Cantidad de bicicletas disponibles |
| bicis_bloqueadas | entero | Cantidad de bicicletas bloqueadas |
| espacios_disponibles | entero | Cantidad de espacios disponibles |
| espacios_bloqueados | entero | Cantidad de espacios bloqueados |


## Fuente de los datos

Los datos provienen de la [API pública de transporte](https://www.buenosaires.gob.ar/desarrollourbano/transporte/apitransporte) de la Ciudad de Buenos Aires.

## Inspiración

Pueden ver algunos análisis en estos tres hilos de twitter: 

* [Cuántas bicis hay](https://twitter.com/d_olivaw/status/1154856629533384704)

* [Estimación del uso del sistema](https://twitter.com/d_olivaw/status/1155985323433713664)

* [Análisis de componentes principales](https://twitter.com/d_olivaw/status/1158876451262935040)
