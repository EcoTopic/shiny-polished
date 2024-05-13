# global.R 

library(shiny)
library(polished)


# configure polished auth when the app initially starts up.
polished_config(
  app_name = config::get("app_name"),
  api_key = config::get("api_key")
)

