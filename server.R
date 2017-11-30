library(plotly)
library(ggplot2)
library(shiny)

setwd("~/Desktop/cereal-practice")

cereal <- read.delim("cereal.tsv", header = TRUE)

server <- function(input, output) {
  output$cerealPlot <- renderPlotly(
    cereal.plotlypot <- plot_ly(
      cereal, x = ~sugars, y = ~rating,
      text = ~paste(name, "<br>Type:", type, '<br>Manufacturer:', mfr),
      color = ~fiber, size = ~calories
    )
  )
}

shinyServer(server)