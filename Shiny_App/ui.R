# ui.R
library(shiny)

shinyUI(fluidPage(
  titlePanel("Interactive Viewer of Rice Phenotypes"),
  helpText("This web application was designed in order to allow users to visualize different phenotypic aspects among over 400 different 
           varieties of rice from around the world. With this webapp, one may assess variation among the accessions based on a wide variety of traits that
           range from Alkalai Spreading Value to Protein Content. The phenotypic trait variation among all rice accessions within the entire population is then
           assessed based on ancestral population membership (determined by Multi-Dimensional-Scaling of a SNP dataset covering over 40,000 SNP markers from 
           the rice genome), or by the geographical region in which each accession was found to occur naturally. Using the 'Radio Button'
           widget, one may select the type of plot desired for visualizing the data. Next, the 'Select Input' drop down widget may be used to specify  the
           phenotypic trait desired for visualization. Finally, one may choose whether to visualize the data based on either the geographic region of natrual occurrence, 
           or the ancestral population membership of each rice accession by clicking one of the two 'Action Buttons' at the bottom of the side panel. 
           The plot will automatically render and change when a different plot type is specified, a different phenotypic trait is selected, or when
           toggling back and forth between ancestral or region based grouping. The default plot shows a histogram for the Alkalai Spreading Value data
           where all rice accessions are grouped together based on their indigenous region."),
    
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

