# Comercio Hispanoamerica-Mundo

Esta semana exploraremos datos históricos sobre el comercio mundial que son parte del proyecto [Open Trade Statistics](https://tradestatistics.io/).

## Obtener los datos

Puedes utilizar el siguiente código para importar los datos a R:

```
read("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2019/2019-05-01/comercio_hispanoamerica_mundo.rda")
```

## Diccionario de datos

### `comercio_hispanoamerica_mundo`

|Variable                               |Clase   |Descripción                                                                          |
|---------------------------------------|--------|-------------------------------------------------------------------------------------|
|anio                                   |entero  |año de registro (desde 2013 a 2017)                                                  |
|codigo_iso_origen                      |caracter|código de 3 dígitos del país de origen                                               |
|nombre_pais_origen                     |caracter|nombre del país de origen                                                            |
|codigo_iso_destino                     |caracter|código de 3 dígitos del país de destino                                              |
|nombre_pais_destino                    |caracter|nombre del país de origen                                                            |
|codigo_comunidad_producto              |caracter|código que indica una determinada comunidad de productos                             |
|color_comunidad_producto               |caracter|color asociado a la comunidad de productos (útil para visualizar)                    |
|nombre_comunidad_producto              |caracter|nombre de la comunidad de productos (una agrupación de distintos productos similares)|
|valor_exportado_dolares                |numérica|monto exportado en dólares del año de registro                                       |
|valor_importado_dolares                |numérica|monto importado en dólares del año de registro                                       |
|pais_origen_pertenece_a_hispanoamerica |entero  |tiene valor 1 si pertenece y 0 en otro caso                                          |
|pais_destino_pertenece_a_hispanoamerica|entero  |tiene valor 1 si pertenece y 0 en otro caso                                          |

## Fuente original y adaptación

Los datos son una traducción y posterior agregación de los que se puede obtener desde una API con en el paquete `tradestatistics` creado por [Mauricio 'Pacha' Vargas](https://twitter.com/pachamaltese). Puedes instalarlo así:

```
install.packages("tradestatistics")
```
