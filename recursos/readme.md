# Recursos: 

En esta sección se irán cargando utilidades / cosnejos respecto de #datosdemiercoles

## Ejemplos de obtener los datos: 

### Bajar los datos desde R

En cada edición semanal se va a incluir un readme.md que tiene detalles de como bajar el conjunto de datos.

se van a encontrar con algo como: 

```
library(readr) # install.packages(readr)
conjunto_datos <- readr::read_delim("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/blob/master/datos/2019/2019-04-10/partidos.txt",delim = "\t")
```

Esta opción es útil cuando los archivos de datos no son muy grandes y no nos molesta utilizar internet cada vez que ejecutemos el código.

### Bajar los datos de la semana de forma directa:

Vas a https://github.com/cienciadedatos/datos-de-miercoles y abajo de todo del readme hay un listado de donde esta el conjunto de datos.

Otra opción es navegar a la carpeta datos

https://github.com/cienciadedatos/datos-de-miercoles/tree/master/datos 
y navegar a la carpeta correspondiente de la fecha.

ej: 2019/2019-04-10 , correponde al año 2019 , y la edición de la semana del dia 10 de abril.


Una vez que bajamos el archivo y lo ubicamos donde nos guste dentro de nuestra computadora para leerlo: 

Un ejemplo de uso sería: 

"c:/datos_de_miercoles/2019-04-10/"


```
library(readr) # install.packages(readr)
conjunto_datos <- readr::read_delim("c:/datos_de_miercoles/2019-04-10/datos.txt",delim = "\t")

```

Esta opción es útil cuando los archivos de datos son más grandes para no tener que bajar el archivo cada vez que ejecutamos el codigo, o para cuando sabemos que no vamos a tener disponibilidad de internet con frecuencia.

### Git

Para usar git deben instalar git en su computadora.

#### clonar el repositorio: 

Para los que esten mas familiarizados con git y deseen tener su rama del repositorio, pueden clonarlo

```
cd carpeta_donde_guardarlo
git clone https://github.com/cienciadedatos/datos-de-miercoles.git
```

Esta opción es útil cuando se desea tener todo el historial de los datos de forma local. 
Es útil cuando se desea poder trabajar sin conexion de internet ( recordar bajar los paquetes que van a usar tambien ;) )

#### En caso de ya tener el repositorio clonado y desear actualizarlo: 

```
git pull https://github.com/cienciadedatos/datos-de-miercoles.git master
```

## Ejemplos de que hacer con los datos

Se pueden hacer muchas cosas, desde "jugar" hasta análisis elaborados.
Se recomienda hacer algo que asegure la constancia semanal, la idea es practicar las habilidades de manejo de datos y de interpretación de los mismos de forma semanal.

Un modo mas "de juego" es: 
ir a twitter o alguna nota y ver que hacen los demas con los datos, luego, tratar de imitar. 
Eventualmente se te van a ocurrir tus propias ideas.


Si no sabes nada de datos se recomienda leer: 
https://es.r4ds.hadley.nz/explora-introduccion.html para empezar a entender un poco mas profundamente de que se trata todo esto.



## Difusión

Se recomienda publicar las cosas que hagas. Esto te va a ayudar a participar de la comunidad, y seguramente te va a sorprender como se van interesando en los trabajos que realizas. Tambien te sirve para mostrar lo que vas haciendo.

El canal principal es twitter con los hashtags: #datosdemiercoles #rstatsES
Se recomienda publicar en twitter mas alla de que tengas tu blog personal. 

Se recomienda tener constancia semanal porque más practica, más experiencia ;)

### Ejemplos de tweet: 

```
Esta semana para #datosdemiercoles #rstatsES, estuve practicando ggplot
<adjuntar imagen del plot que hiciste>
```

```
La semana del 2019-04-10 para #datosdemiercoles #rstatsES hice un post en mi blog:
<link a tu blog / post >
<adjuntar imagen o resumen del informe que hiciste>
```