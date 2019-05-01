# Comercio Hispanoamérica-Mundo

Esta semana exploraremos datos sobre el comercio mundial que son parte del proyecto [Open Trade Statistics](https://tradestatistics.io/). Los datos permiten conocer qué categorías de productos se importan/exportan desde y hacia Hispanoamérica. Algunas preguntas que es posible plantear a partir de ellos:

* ¿Cómo ha evolucionado el comercio entre los países de la región?
* ¿Qué porcentaje de lo que un determinado país exporta va al resto de la región vs. resto del mundo?
* ¿Qué países se especializan en determinada categoría de producto?


## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R.

```
#install.packages("readr")

comercio_hispanoamerica_mundo <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-01/comercio_hispanoamerica_mundo_agregado.csv")
```

## Diccionario de datos

### `comercio_hispanoamerica_mundo`

|Variable                               |Clase   |Descripción                                                                          |
|---------------------------------------|--------|-------------------------------------------------------------------------------------|
|anio                                   |entero  |año de registro (desde 2013 a 2017)                                                  |
|codigo_iso_origen                      |caracter|código de 3 dígitos del país de origen                                               |
|nombre_pais_origen                     |caracter|nombre del país de origen                                                            |
|codigo_iso_destino                     |caracter|código ISO de 3 dígitos del país de destino                                              |
|nombre_pais_destino                    |caracter|nombre del país de origen                                                            |
|codigo_comunidad_producto              |caracter|código que indica una determinada comunidad de productos                             |
|color_comunidad_producto               |caracter|color asociado a la comunidad de productos                 |
|nombre_comunidad_producto              |caracter|nombre de la comunidad de productos (una agrupación de distintos productos similares)|
|valor_exportado_dolares                |numérica|monto exportado en dólares del año de registro                                       |
|valor_importado_dolares                |numérica|monto importado en dólares del año de registro                                       |
|pais_origen_pertenece_a_hispanoamerica |entero  |tiene valor `1` si pertenece a Hispanoamérica y `0` si no caso                                          |
|pais_destino_pertenece_a_hispanoamerica|entero  |tiene valor `1` si pertenece a Hispanoamérica y `0` si no                                          |

## Fuente original y adaptación

Los datos son una traducción y posterior agregación de aquellos que se pueden obtener desde una API con en el paquete `tradestatistics` creado por [Mauricio 'Pacha' Vargas](https://twitter.com/pachamaltese). Si quieres trabajar con todos los datos, puedes instalar el paquete desde CRAN:

```
install.packages("tradestatistics")
```

## Contexto e inspiración

Puedes revisar [este artículo del periódico El País](https://elpais.com/internacional/2017/05/19/america/1495207746_872725.html) para tener un poco de contexto sobre el tema. Ahí encontrarás una propuesta de visualización de datos sobre comercio que puede servirte como inspiración o como motivación para mejorar (¡hay un gráfico de torta!).
