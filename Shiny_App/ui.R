# ui.R
library(shiny)

shinyUI(fluidPage(
  titlePanel("Interactive Viewer of Rice Phenotypes"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("plot",
                   "Choose a plot to display:",
                   c("histogram",
                     "boxplot",
                     "violin plot")),
   
      selectInput("trait", 
                  label = "Choose a trait to display",
                  choices = list("Alkali Spreading Value" = "Alkali.spreading.value",
                                 "Amylose Content" = "Amylose.content",
                                 "Blast Resistance"= "Blast.resistance",
                                 "Flag Leaf Length" = "Flag.leaf.length",
                                 "Panicle Length" = "Panicle.length",
                                 "Plant Height" = "Plant.height",
                                 "Protein Content" = "Protein.content")),
     actionButton("reg", "Region"),
     actionButton("anc", "Ancestral"),
    p("Click the button to update the value displayed in the main panel."))
  ,


    mainPanel(plotOutput("boxplot"))
      

)))

