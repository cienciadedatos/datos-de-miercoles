library(RMariaDB)
library(tidyverse)

# sacar datos de sql ----

con <- dbConnect(RMariaDB::MariaDB(), group = "constitucionabierta")

dbListTables(con)

# comuna <- tbl(con, "Comuna") %>% collect() %>% as_tibble()
conceptos <- tbl(con, "Conceptos") %>% collect() %>% as_tibble()
ela <- tbl(con, "ELA") %>% collect() %>% as_tibble()
memoria <- tbl(con, "Memoria") %>% collect() %>% as_tibble()

# arreglar comunas ----

# este dataset viene de github.com/pachamaltese/chilemaps
load("~/datos-de-miercoles/datos/2019/2019-10-23/territorial_codes.rda")

conceptos <- conceptos %>% 
  left_join(ela) %>% 
  select(-c(id, tema, estado, numeroConcepto, esOtros)) %>% 
  mutate(
    comuna = iconv(comuna, from = "UTF-8", to = "ASCII//TRANSLIT", sub = ""),
    comuna = str_trim(comuna),
    comuna = str_replace_all(comuna, "[^[:alnum:]|[:space:]]", ""),
    comuna = str_to_title(comuna)
  ) %>%
  mutate(
    comuna = str_replace_all(comuna, " De ", " de "),
    comuna = str_replace_all(comuna, " Del ", " del "),
    comuna = str_replace_all(comuna, " La ", " la "),
    comuna = str_replace_all(comuna, " Las ", " las "),
    comuna = str_replace_all(comuna, " Los ", " los "),
    comuna = str_replace_all(comuna, " Y ", " y "),
    comuna = str_replace_all(comuna, "Ohiggins", "OHiggins")
  ) %>% 
  mutate(
    comuna = case_when(comuna == "La Calera" ~ "Calera",
                       comuna == "Coyhaique" ~ "Coihaique",
                       comuna == "San Vicente de Tagua Tagua" ~ "San Vicente",
                       comuna == "Aysen" ~ "Aisen",
                       comuna == "Paihuano" ~ "Paiguano",
                       TRUE ~ comuna)
  ) %>% 
  left_join(territorial_codes, by = c("comuna" = "commune_name")) %>% 
  # select(comuna:commune_id) %>% 
  # distinct() %>% 
  # filter(is.na(region_id))
  select(idELA:fecha, id_comuna = commune_id, comuna, id_region = region_id, region = region_name)

# guardar ----

# save(comuna, file = "01-comuna.rdata", compress = "xz")
save(conceptos, file = "01-conceptos.rdata", compress = "xz")
# save(ela, file = "03-ela.rdata", compress = "xz")
save(memoria, file = "02-memoria.rdata", compress = "xz")
