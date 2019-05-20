if (!require("pacman")) { install.packages("pacman") }
pacman::p_load(rtweet, httpuv, dplyr, lubridate)

data <- search_tweets("#datosdemiercoles", n = 18000, retryonratelimit = TRUE, include_rts = TRUE)

semana6 <- data %>% 
  filter(
    created_at >= ymd_hms("2019-05-09 15:18:10") & created_at <= ymd_hms("2019-05-16 15:18:10")
  )

save(semana6, file = glue::glue("meta/datos-de-miercoles-{ Sys.Date() }.rda"), compress = "xz")
