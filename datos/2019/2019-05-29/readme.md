# Datos sobre terremotos

Esta semana exploraremos datos sobre terremotos provenientes del USGS (Servicio Geológico de los Estados Unidos): un registro de terremotos desde 1965 a 2016 y los datos sobre los ocurridos los últimos 30 días.


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

terremotos <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-29/terremotos.csv")

mes <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-29/mes.csv")


```



## Diccionario de datos

### `terremotos`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|fecha           | fecha              | Fecha del terremoto |
|hora      | duración            | Hora del terremoto |
|latitud        | numérica            | Latitud epicentro |
|longitud | numérica | Longitud epicentro|
|tipo | caracter | Evento que origina el terremoto: `terremoto`, `explosión nuclear`, `explosión`, `estallido de roca` |
|profundidad | numérica | Profundidad del terremoto |
|magnitud | numérica | Magnitud del terremoto |
|tipo_magnitud | caracter| Tipo de magnitud |

### `mes`
|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|fecha_hora           | fecha hora              | Fecha y hora del terremoto |
|latitud        | numérica            | Latitud epicentro |
|longitud | numérica | Longitud epicentro|
|profundidad | numérica | Profundidad del terremoto |
|tipo | caracter | Evento que origina el terremoto (en este caso, todos son `terremoto`) |
|magnitud | numérica | Magnitud del terremoto |
|tipo_magnitud | caracter| Tipo de magnitud |
|lugar | caracter | Nombre del lugar en el que ocurrió el terremoto (en inglés)|

## Fuente original y adaptación

`terremotos` fue obtenido desde [Kaggle](https://www.kaggle.com/usgs/earthquake-database) y `mes` directamente desde la página del [USGS](https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php). Si quieres obtener más datos o incluir otras variables, puedes explorar la API del [Catálogo de Terremotos del USGS](https://earthquake.usgs.gov/fdsnws/event/1/).

## Inspiración

En los siguientes enlaces puedes ver algunos ejemplos de visualizaciones de datos sobre terremotos:

* [422South](http://422south.com/work/global-earthquakes-data-visualization)
* [Mapbox](https://labs.mapbox.com/bites/00267/)
* [USGS](https://earthquake.usgs.gov/earthquakes/map/#%7B%22autoUpdate%22%3A%5B%22autoUpdate%22%5D%2C%22basemap%22%3A%22grayscale%22%2C%22feed%22%3A%2230day_m45%22%2C%22listFormat%22%3A%22default%22%2C%22mapposition%22%3A%5B%5B-80.70399666821143%2C-42.890625%5D%2C%5B84.37156598282918%2C377.9296875%5D%5D%2C%22overlays%22%3A%5B%22plates%22%5D%2C%22restrictListToMap%22%3A%5B%22restrictListToMap%22%5D%2C%22search%22%3Anull%2C%22sort%22%3A%22newest%22%2C%22timezone%22%3A%22utc%22%2C%22viewModes%22%3A%5B%22list%22%2C%22map%22%2C%22settings%22%5D%2C%22event%22%3Anull%7D)
