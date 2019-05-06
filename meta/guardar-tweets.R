if (!require("pacman")) { install.packages("pacman") }
pacman::p_load(rtweet, httpuv, dplyr, lubridate)

data <- search_tweets("#datosdemiercoles", n = 18000, retryonratelimit = TRUE, include_rts = TRUE)

semana4 <- data %>% 
  filter(
    created_at >= ymd_hms("2019-04-25 15:18:10") & created_at <= ymd_hms("2019-05-02 15:18:10")
  )

save(semana4, file = glue::glue("meta/datos-de-miercoles-{ Sys.Date() }.rda"), compress = "xz")
