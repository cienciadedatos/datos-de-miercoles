# Datos sobre los incendios en el Amazonas

Esta semana analizaremos datos sobre los incendios que han afectado recientemente al Amazonas. Es una buena oportunidad para poner en práctica tu habilidades de análisis de datos espaciales y generar conocimiento sobre un fenómeno contingente.

## Sobre los datos

Los incendios activos se detectan mediante imágenes de satélites, sobre la base de anomalías termales, es decir, diferencias considerables entre la temperatura de un pixel dado y las temperaturas que se registran en el terreno a su alrededor.

El sensor MODIS a bordo de los satélites Terra y Aqua registra incendios en pixeles de 1 km de lado. El sensor VIIRS está a bordo del satélite SNPP y usa un algoritmo similar para detectar incendios; sin embargo, el pixel es de 375 m de lado. Debido al tamaño del pixel en el terreno, puede haber más de un foco de incendio en los datos de MODIS, pero con pocos pixeles se cubre mejor toda América Latina.

El dataset que se presenta corresponde a 6 meses de registros de incendios activos diarios detectados por el sensor MODIS tanto por el satelite Terra como por el Aqua. En conjunto, ambos una misma región 4 veces por día.


## Obtener los datos

```r
# install.packages("readr")
incendios <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-09-11/incendios.zicsv")
incendios_pais <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-09-11/incendios_pais.csv")
```


## Diccionario de datos

Se incluye una versión de los datos con y sin los nombres de los países

#### `incendios`

Variable | Clase | Descripción
-- | -- | --
latitud | entero | Latitud del centro del pixel (en grados decimales, WGS84) donde se detectó la anomalía de temperatura
longitud | entero | Longitud del centro del pixel (en grados decimales, WGS84) donde se detectó la anomalía de temperatura
fecha | fecha | Fecha de adquisición del dato de incendio activo
horamin | caracter | Momento de la adquisición del dato de incendio activo en horas y minutos UTC
intensidad | entero | Intensidad de incendio (FRP Fire Radiative Power, en megawatts)
mes | entero | Mes del año
semana | entero | Semana del año

#### `incendios_pais`

Además de los atributos anteriores, presenta estos adicionales:

Variable | Clase | Descripción
-- | -- | --
pais | caracter | Nombre del país
ISO | caracter | Código ISO de 3 letras del país


### Fuente de datos

La descarga y procesamiento de los datos estuvo a cargo de [Priscilla Minotti](https://twitter.com/pmnatural). Los datos fueron descargados del [servicio FIRMS de NASA](https://firms.modaps.eosdis.nasa.gov/download/) para Sudamérica y Centroamérica, y combinados en un solo archivo. El servicio FIRMS permite descargar los datos de incendios activos de la última semana y también solicitar datos históricos para sectores geográficos definidos.
Los datos fueron filtrados para presentar solo los que corresponden a vegetación (cuyo tipo es 0) y con confianza > 0.7, seleccionando y renombrando las variables correspondientes a la posición del incendio, la fecha y hora, e intensidad del incendio. Se agregaron los atributos de mes y semana del año para facilitar un agrupamiento temporal. A estos datos se les agregó el nombre del país y la sigla ISO correspondiente mediante análisis espacial, usando los países de Latinoamérica obtenidos del sitio [Natural Earth](http://www.naturalearthdata.com/).

El polígono de la cuenca Amazónica puede obtenerse desde [aquí](http://worldmap.harvard.edu/data/geonode:amapoly_ivb) en distintos formatos. Encontrarás una versión en este mismo repositorio (`amapoly_ivb`).

## Inspiración
En [este elnace](https://es.mongabay.com/2019/08/prayforamazonas-imagenes-satelitales/) puedes ver distintos ejemplos de visualizaciones sobre estos incendios que han circulado en los medios.
