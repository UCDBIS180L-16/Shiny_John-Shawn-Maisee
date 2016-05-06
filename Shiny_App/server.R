# server.R
# Using ps4.2500.RData data frame
# Traits protein content, amylose content, blast resistance, 
# plant height, panicle length, flag leaf length, alkali spreading value
library(shiny)
library(ggplot2)
library(reshape2)
shinyServer(
  function(input, output) {
    # output name boxplot
    plant <- read.csv("data/shiny.data")
    plant$popID <- as.character(as.numeric(plant$popID))
      pl <- reactiveValues(data = NULL)
      observeEvent(input$reg, {
         pl$data <- ggplot(data = plant,
                               aes_string(x = "Region", y= input$trait, fill = "Region"))
     
      })
      observeEvent(input$anc, {
        pl$data <- ggplot(data = plant,
                            aes_string(x = "popID", y = input$trait, fill = "popID"))
        
      })
      output$boxplot <- renderPlot({
        if (is.null(pl$data)) return()
        pl$data + geom_boxplot()
      
      })
})
    
# output name boxplot

