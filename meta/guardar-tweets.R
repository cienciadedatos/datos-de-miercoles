if (!require("pacman")) { install.packages("pacman") }
pacman::p_load(rtweet, httpuv, dplyr, lubridate)

data <- search_tweets("#datosdemiercoles", n = 18000, retryonratelimit = TRUE, include_rts = TRUE)

semana8 <- data %>% 
  filter(
    created_at >= ymd_hms("2019-05-30 15:18:10") & created_at <= ymd_hms("2019-06-06 15:18:10")
  )

save(semana8, file = glue::glue("meta/datos-de-miercoles-{ Sys.Date() }.rda"), compress = "xz")
