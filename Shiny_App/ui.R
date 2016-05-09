# ui.R
library(shiny)

shinyUI(fluidPage(
  titlePanel("Interactive Viewer of Rice Phenotypes"),
  helpText("This web application was designed in order to allow users to visualize different phenotypic aspects among over 400 different varieties of rice form around the world. With this webapp, one can assess variation among the accessions based on traits ranging from Panicle Length to Protein Content. Variation for each trait within the entire population can be further assessed based on ancestral population structure."),
    
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

      h5(strong("Sort by Region or Ancestral Population")),
     actionButton("reg", "Region"),
     actionButton("anc", "Ancestral"),
    p("Click the button to update the value displayed in the main panel."))
  ,

    mainPanel(plotOutput("boxplot"))
      

)
))

