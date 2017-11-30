library(plotly)
library(ggplot2)
library(shiny)

setwd("~/Desktop/cereal-practice")

cereal <- read.delim("cereal.tsv", header = TRUE)

ui <- fluidPage(
  titlePanel("Cereals"),  
  sidebarLayout( 
    sidebarPanel(
      fiberselect <- sliderInput('fiber',             
                                 "grams of fiber per serving",  
                                 min = 0,           
                                 max = 9,          
                                 value = 4         
      ),
      typeselect <- checkboxGroupInput('type',
                                       "type of cereal",
                                       c("cold" = "C", 
                                         "hot" = "H")
      )),
    mainPanel(
      plotlyOutput('cerealPlot')
    )
  ))

shinyUI(ui)