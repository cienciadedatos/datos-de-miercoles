# Datos de Airbnb

Esta semana exploraremos los datos que liberó Airbnb sobre cuatro ciudades latinoamericanas: Buenos Aires, Ciudad de México, Río de Janeiro y Santiago.


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install.packages(readr)

buenos_aires <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-05/buenos_aires.csv")

cdmx <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-05/cdmx.csv")

rio <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-05/rio.csv")

santiago <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-06-05/santiago.csv")



```

## Diccionario de datos

#### Los cuatro archivos tienen las mismas 12 variables

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| id | numérica | identificador del alojamiento |
| descripcion | caracter | nombre descriptivo (en inglés) del alojamiento |
| id_anfitrion | numérica | identificador del/la anfitrion/a
| nombre_anfitrion | caracter | nombre del/la anfitrion/a |
| anfitrion_desde | fecha | fecha de la inscripción como anfitrion/a |
| superanfitrion | lógica | si tiene o no la categoría de "Súper Anfitrión" |
| barrio | caracter | nombre del barrio en que se ubica la propiedad |
| latitud | numérica | latitud de la ubicación de la propiedad |
| longitud | numérica | longitud de la ubicación de la propiedad |
| tipo_alojamiento | caracter | Si corresponde a un alojamiento entero, habitación privada o habitación compartida. |
| huéspedes | numérica | cantidad de huéspedes que puede recibir la propiedad |
| política de cancelación | caracter | tipo de política de cancelación (`flexible`, `moderada`, `estricta`, `estricta_con_gracia` (período de gracia de 14 días), `superestricta_30` (50% de reembolso hasta 30 días antes de la llegada) y `superestricta_60` (50% de reembolso hasta 60 días antes de la llegada) |


## Fuente original y adaptación
Los datos fueron extraídos del [sitio web de Airbnb](http://insideairbnb.com/get-the-data.html) y luego traducidos. En el sitio original encontrarás datos sobre más ciudades del mundo y _datasets_ con más variables.
También encontrarás los archivos GeoJSON de los barrios de las cuatros ciudades, que puedes descargar directamente acá:

* [GeoJSON barrios Buenos Aires](http://data.insideairbnb.com/argentina/ciudad-aut%C3%B3noma-de-buenos-aires/buenos-aires/2019-04-17/visualisations/neighbourhoods.geojson)
* [GeoJSON barrios CDMX](http://data.insideairbnb.com/mexico/df/mexico-city/2019-04-17/visualisations/neighbourhoods.geojson)
* [GeoJSON barrios Río de Janeiro](http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2019-04-16/visualisations/neighbourhoods.geojson)
* [GeoJSON barrios Santiago](http://data.insideairbnb.com/chile/rm/santiago/2019-03-15/visualisations/neighbourhoods.geojson)

## Inspiración

En los siguientes enlaces puedes ver algunos ejemplos de visualizaciones con estos mismos datos:

* [¿Dónde están los Airbnb's en CDMX?](https://medium.com/@datavizero/d%C3%B3nde-est%C3%A1n-los-airbnbs-en-la-cdmx-ffc5c3f69d7b)
* [Visualización oferta Airbnb en Santiago](https://twitter.com/Juanizio_C/status/1135925156956782593)
