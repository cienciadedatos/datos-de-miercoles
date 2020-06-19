
# Datos sobre las aplicaciones en Google Play Store

Esta semana analizaremos datos sobre las aplicaciones disponibles en la _Play Store_ de Google. ¿Cuáles son las mejor valoradas? ¿En qué categoría existen más aplicaciones?

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
apps <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-07-24/apps_googleplaystore.csv")
```

## Diccionario de datos

#### `apps`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| app | caracter | Nombre de la aplicación |
| categoría | caracter | Categoría a la que pertenece (por ejemplo, `Juegos`, `Productividad`, `Social`, etc.)  |
| calificacion | entero | Calificación de la app. Valor máximo es 5 |
| resenas | entero | Cantidad de reseñas que se han hecho de la aplicación |
| tamanio | caracter | Tamaño de la aplicación en kilo o megabytes |
| instalaciones | entero | Cantidad de instalaciones. Indica el umbral que ha sobrepasado |
| tipo | caracter | Si se trata de una aplicación `gratuita` o `paga` |
| precio | entero | Valor en dólares de la aplicación, en caso de ser paga |
| clasificacion_contenido | caracter | Indica para qué público está recomendada la aplicación (`Todos`, `Adolescentes`, `Adultos únicamente`, etc.) |

## Fuente de los datos

Los datos fueron extraídos desde [Kaggle](https://www.kaggle.com/lava18/google-play-store-apps#googleplaystore.csv) y luego traducidos.


## Inspiración

En [este enlace](https://nycdatascience.com/blog/student-works/web-scraping/analysis-of-apps-in-the-google-play-store/) podrás ver un ejemplo en inglés de un análisis de datos similares.
