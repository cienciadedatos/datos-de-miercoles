# Datos sobre terremotos

Esta semana exploraremos datos sobre terremotos provenientes del USGS (Servicio Geológico de los Estados Unidos): un registro de terremotos entre 1965-2016 y los datos sobre los terremotos ocurridos los últimos 30 días


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
|magnitud | numérica | magnitud del terremoto |
|tipo_magnitud | caracter| Tipo de magnitud |

### `mes`
|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
|fecha_hora           | fecha hora              | Fecha y hora del terremoto |
|latitud        | numérica            | Latitud epicentro |
|longitud | numérica | Longitud epicentro|
|profundidad | numérica | Profundidad del terremoto |
|tipo | caracter | Evento que origina el terremoto }(en este caso, todos son `terremoto`) |
|magnitud | numérica | Magnitud del terremoto |
|tipo_magnitud | caracter| Tipo de magnitud |
|lugar | caracter | Lugar en el que ocurrió el terremoto (en inglés)|

## Fuente original y adaptación

`terremotos` fue obtenido desde [Kaggle](https://www.kaggle.com/usgs/earthquake-database) y `mes` directamente desde la página del [USGS](https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php). Si quieres obtener más datos o incluir otras variables, puedes explorar la API del [Catálogo de Terremotos del USGS](https://earthquake.usgs.gov/fdsnws/event/1/).

## Inspiración
