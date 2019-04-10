# Recursos

En esta sección iremos cargando recomendaciones sobre cómo participar en #DatosDeMiercoles

## Ejemplos sobre cómo obtener los datos

### 1. Bajar los datos directamente desde R

Cada edición semanal incluye un archivo `readme.md` con la información sobre el conjunto de datos y el código necesario para descargar los datos en R. Algo así: 

```
# install.packages(readr)
conjunto_datos <- readr::read_delim("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/blob/master/datos/2019/2019-04-10/partidos.txt",delim = "\t")
```

Esta opción es útil cuando los archivos de datos no son muy grandes y no tenemos problemas con utilizar internet cada vez que ejecutemos el código.

### 2. Bajar los datos de la semana de forma directa

En el `readme` del repositorio principal de Datos de Miércoles encontrás [una tabla con el listado de los datos](https://github.com/cienciadedatos/datos-de-miercoles#datos) de cada semana. Si haces clic sobre la fecha que te interesa, llegarás a la carpeta que contiene los datos. 

También puedes navegar directamente a la [carpeta de los datos](https://github.com/cienciadedatos/datos-de-miercoles/tree/master/datos) y acceder a la subcarpeta de la fecha correspondiente. Por ejemplo, en la carpeta `2019/2019-04-10` encontrarás los datos del día 10 de abril de 2019. 

Desde ahí puedes descargar el archivo y ubicarlo en el directorio de tu computadora que te interese. Si estás trabajando en un _proyecto_ en RStudio, podrías importarlo a R así: 

```
# install.packages(readr)
conjunto_datos <- readr::read_delim("partidos.txt",delim = "\t")

```
Esta opción es útil cuando los archivos de datos son más grandes o cuando sabemos que no tendremos disponibilidad de internet con frecuencia.

### 3. Crear una copia local del repositorio usando Git

(Para esta opción tienes que tener instalado antes `Git` en tu computadora)

#### Clona el repositorio

Puedes clonar el repositorio directamente desde la Terminal.
```
cd ruta/carpeta/donde/quieres/guardarlo
git clone https://github.com/cienciadedatos/datos-de-miercoles.git
```

Esta opción es útil cuando quieres tener todo el historial de los datos de forma local, o para poder trabajar sin conexion de internet.

#### Actualizar el repositorio 

Puedes actualizar semanalmente tu copia del repositorio, para que aparezca la incorporación de los nuevos datos:

```
git pull https://github.com/cienciadedatos/datos-de-miercoles.git master
```

## ¿Qué hacer con los datos?

Lo que hagas con los datos dependerá de los objetivos que tengas. Puedes simplemente jugar ellos o hacer algo más elaborado. Lo importante es que trates de plantearte objetivos realistas que te permitan ser constante y participar semanalmente. No olvides que el foco es poner en pŕactica tus habilidades manejando, visualizando e interpretando datos. 
Si no sabes por dónde partir, puedes revisar las herramientas que se proponen en [el capítulo sobre exploración de datos](https://es.r4ds.hadley.nz/explora-introduccion.html) de "R para Ciencia de Datos" y ponerlas en práctica con los datos de la semana. También puedes buscar algún tipo de análisis o visualización que alguien ya haya hecho y tratar de realizarla con el dataset semanal. O puedes ocupar los datos para aprender a usar algún paquete nuevo. 
No importa si al inicio no se te ocurre nada o solo imitas lo que otras personas ya han hecho: la idea de hacer este ejercicio semanalmente es adquirir experiencia y poco a poco adquirir mayor autonomía. 

## Difusión

Incluso si hiciste algo muy simple, ¡no dudes en compartirlo! El objetivo de _Datos de miércoles_ es generar comunidad y para esto es fundamental que te involucres. Tu trabajo puede inspirar a otras personas para participar, y mostrar tu trabajo semanalmente te puede servir para visibilizar las habilidades que tienes y las que vas adquiriendo.  


### ¿Cómo compartir tu trabajo?

¡Hay varias opciones!
El canal principal es Twitter. 
En tu tuit, incluye imágenes de la(s) visualización(es) que creaste y una copia del código utilizado. Es muy útil comentar tu código cuando sea posible para que el resto de la comunidad entienda tu proceso. En la sección [enlaces útiles](https://github.com/cienciadedatos/datos-de-miercoles#enlaces-%C3%BAtiles) encontrarás sugerencias sobre cómo compartir una imagen del código usando _Carbon_ y cómo exportar tus visualizaciones desde R.

No olvides usar los _hashtags_ `#DatosDeMiercoles` y `#rstatsES` para que podamos compartir tu trabajo desde la cuenta [@R4DS_es](https://twitter.com/r4ds_es).

Si tienes un blog personal y publicas tu análisis ahí, no olvides avisarle a la comunidad por Twitter.

### Ejemplos de tuits
(¡a partir de la próxima semana, ya podremos poner ejemplos reales!)

```
Esta semana para #DatosDeMiercoles estuve practicando con los paquetes ggplot2 y gganimate. #rstatsES
<adjuntar imagen de tu visualización que hiciste>
<adjuntar imagen de tu código>
```

```
En esta primera semana de #DatosdeMiercoles analicé la ubicación de los distintos estadios en que se han jugado los partidos de los mundiales de fútbol. Pueden ver el análisis en mi blog: <link a tu blog / post >
<adjuntar imagen que ilustre tu post>
```
