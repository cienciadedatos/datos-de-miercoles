
# Datos sobre Felicidad

Esta semana analizaremos datos del Reporte de Felicidad Mundial. ¿En qué países las personas se sienten más felices? ¿Cómo se percibe la democracia y la corrupción en esos países? ¿Cuál es su PIB per cápita?

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
# install_packages("readr")
felicidad <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-08-07/felicidad.csv")
```

## Diccionario de datos

#### `felicidad`

|Variable       |Clase               |Descripción |
|:--------------|:-------------------|:-----------|
| pais | caracter | Nombre del país |
| anio | entero | Año  |
| felicidad | entero | Puntaje de felicidad, también conocido como Escalera de Vida. Indica percepción de calidad de vida en una escala de 0 a 10. Mientras más alto el puntaje, mayor felicidad.  |
| log_pib | entero | Log Producto Interno Bruto |
| soporte_social | entero | Calidad del soporte social |
| expectativa_vida | entero | Expectativa de Vida Saludable |
| libertad | entero | Libertad para tomar decisiones de vida |
| generosidad | entero | Generosidad. Se mide a partir de las variables PIB per cápita y la pregunta sobre si se ha donado dinero a una institución de caridad |
| percepcion_corrupcion | entero | Percepción de la corrupción |
| afecto_positivo | entero | Afecto positivo: medido a partir de la respuesta a preguntas sobre felicidad, risa y gozo |
| afecto_negativo | entero | Afecto negativo: medido a partir de la respuesta a preguntas sobre preocupación, tristeza y enojo |
| confianza | entero | Confianza en el gobierno |
| calidad_democracia | entero | Calidad de la democracia |
| calidad_entrega | entero | Calidad de la entrega de servicios por parte del gobierno |
| de_escalera_pais_anio | entero | Desviación estándar por país y año del puntaje de felicidad o Escalera de Vida |
| gini_banco_mundial | entero | Gini según el Banco Mundial |
| gini_banco_mundial_promedio | entero | Promedio Gini para el período 2000-2016  |

## Fuente de los datos

Los datos fueron extraídos del  [World Happines Report 2019](https://worldhappiness.report/ed/2019/) y luego traducidos. Si quieres revisar el detalle sobre cómo se midió cada variable, puedes revisar [este documento](https://s3.amazonaws.com/happiness-report/2019/WHR19_Ch2A_Appendix1.pdf).

## Inspiración

En [este enlace](https://datosmacro.expansion.com/demografia/indice-felicidad) puedes ver algunas visualizaciones espaciales para la variable `felicidad`.
