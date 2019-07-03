
# Datos sobre R y sus paquetes

Esta semana la dedicaremos al ecosistema de R. El primer _dataset_ contiene los datos sobre las descargas de R según sistema operativo en el último mes desde el servidor espejo de RStudio. El segundo, datos sobre todos los paquetes de R publicados en CRAN. Además, agregamos el código en caso de que quieras datos sobre la descarga de algún paquete en particular.

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
descargas_R <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-07-03/descargas_R.csv")
paquetes_cran <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-07-03/paquetes_CRAN.csv")
```

## Diccionario de datos

#### `descargas_R`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| fecha | fecha | fecha de la descarga |
| version_r | caracter | Versión de R descargada |
| sistema_operativo | caracter | sistema operativo (`win`, `osx`, `src`) |
| descargas | numérica | cantidad de descargas en esa fecha |

#### `paquetes_cran`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| paquete | caracter | Nombre del paquete |
| version | caracter | Versión actualmente publicada en CRAN |
| depende_de | caracter | Versión de R y otros paquetes de los que depende |
| importa | caracter | Paquetes que importa cuando es instalado |
| sugiere | caracter | Paquetes que sugiere instalar |
| autores | caracter | Autores del paquete |
| titulo | caracter | Título descriptivo del paquete |
| descripcion | caracter | Descripción del paquete |
| fecha_publicacion | fecha | Fecha en que fue publicada en CRAN la última versión |
| idioma | caracter | Código ISO de dos letras del idioma del paquete (muchos `NA` porque los paquetes en inglés suelen no declarar idioma :unamused:) |
| codificacion | caracter | Codificación utilizada |
| dependen_de | caracter | Paquetes que dependen de este paquete |
| lo_importan | caracter | Paquetes que importan este paquete cuando son instalados |
| lo_sugieren | caracter | Paquetes que sugieren instalar este paquete |


#### Consultar datos de descarga (y otros) de paquetes específicos usando `cranlogs`

Si te interesan datos más específicos (como la cantidad de descargas por paquete) puedes utilizar `cranlogs`. Los datos que entrega provienen del servidor espejo de CRAN que mantiene RStudio. No es el único, pero es uno de los más populares y el que se utiliza por defecto cuando instalas un paquete desde esa plataforma (los datos de descarga de todos los servidores espejo es desconocido).

Si quieres más información sobre `cranlogs`, revisa [el siguiente enlace](https://docs.r-hub.io/#cranlogs)

```r
install.packages("cranlogs")
library(cranlogs)
```

Ejemplo: si quisieras saber los datos de descargas del `tidyverse` durante la última semana, podrías utilizar el siguiente código:

```
cran_downloads(package = "tidyverse", when = "last-week")
```
```
  date       count package
1 2019-06-25 13558 tidyverse
2 2019-06-26 11035 tidyverse
3 2019-06-27 10803 tidyverse
4 2019-06-28 10811 tidyverse
5 2019-06-29  4830 tidyverse
6 2019-06-30  5002 tidyverse
7 2019-07-01 11382 tidyverse
```
Si quieres ver qué otras opciones de consulta existen, revisa [la documentación del paquete](https://github.com/r-hub/cranlogs) (en inglés).

## Fuente de los datos

Los datos sobre las descargas de R se obtuvieron utilizando el paquete `cranlogs`. Aquellos sobre los paquetes publicados en CRAN fueron descargados desde http://cran.r-project.org/web/packages/packages.rds y luego se tradujo una selección de las variables.


## Inspiración

* El año pasado en [LatinR](http://latin-r.com) Ariel Salgado e Inés Caridi presentaron una trabajo acerca de la evolución de los paquetes de R. Puedes ver [el resumen acá](http://sedici.unlp.edu.ar/bitstream/handle/10915/72540/Resumen.pdf-PDFA.pdf?sequence=1&isAllowed=y).
