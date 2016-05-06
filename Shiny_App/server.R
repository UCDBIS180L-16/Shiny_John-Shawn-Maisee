# server.R
# Traits protein content, amylose content, blast resistance, 
# plant height, panicle length, flag leaf length, alkali spreading value
library(shiny)
library(ggplot2)
library(reshape2)
load("data/rice_shiny_data")
shinyServer(
  function(input, output) {
  }
)