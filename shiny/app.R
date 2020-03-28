library(shiny)
library(leaflet)

source("../R/mod_add_data.R", chdir = TRUE)
source("../R/mod_citation.R", chdir = TRUE)
source("../R/mod_darwinize.R", chdir = TRUE)

ui <- fluidPage(
  mod_add_data_ui(1),
  mod_citation_ui(1,"citation_ui_1"),
  mod_darwinize_ui(1),
)

server <- function(input, output) {
  dat = callModule(mod_add_data_server, 1)
  callModule(mod_citation_server, package="citation_ui_1",1)
  callModule(mod_darwinize_server, dat=dat,1)
}

shinyApp(ui = ui, server = server)