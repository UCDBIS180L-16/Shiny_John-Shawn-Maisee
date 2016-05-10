# ui.R
library(shiny)

shinyUI(fluidPage(
  titlePanel("Interactive Viewer of Rice Phenotypes"),
  helpText("This web application was designed in order to allow users to visualize different phenotypic aspects among over 400 different 
           varieties of rice form around the world. With this webapp, one can assess variation among the accessions based on traits ranging 
           from Panicle Length to Protein Content. Trait variation among all rice accessions within the entire population can be further assessed 
           based on ancestral population membership (determined by Multi-Dimensional-Scaling of a SNP dataset covering over 40,000 SNP markers from 
           the rice genome), or by the geographical region in which they were found to naturally occur. To use the app, use the Radio Button
           widget to select the type of plot desired for visualizing the data. Next, using the Select Input drop down widget to choose the
           phenotypic trait you want to visualize. Finally, choose whether you wise to visualize the data based on either the geographic region 
           or ancestral population membership of each rice accession using the Action Button. The plot will automatically render and change when 
           the type of plot is modified, but an action button must be clicked when the phenotypic trait selection is switched."),
    
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

     actionButton("anc", "Ancestral")),



    mainPanel(plotOutput("boxplot"))
      

)
))

