# A shiny application for exploring disease burden

# ---------------------------------- Set up ----------------------------------

# Load packages of interest
library(dplyr)
library(ggplot2)
library(shiny)

# Load the `data/disease_burden.csv` file into a variable
disease_data <- read.csv("data/disease_burden_data.csv", stringsAsFactors = F)

# Create a variable storing the unique countries in the dataset 
# (it will help to `sort()` it alphabetically)
locations <- sort(unique(disease_data$location))

# Create a variable storing the unique measures in the dataset 
measures <- unique(disease_data$measure)

# ------------------------------- User Interface -------------------------------

# Define a user-interface (UI) for your application: it will contain:
# - A title For your application
# - A layout that separates your "widgets" from your graphic
# - A chart showing the top causes (based on the selected measure and location)
ui <- fluidPage(
   
   # Application title
   titlePanel("Disease Burden Explorer"),
   
   # A `sidebarLayout` provides a two panel layout for the controls and chart
   sidebarLayout(
      sidebarPanel(
        # Create a select input for choosing a country 
        
        
        # Create a select input for choosing a measure 
        
      ),
      
      # Your primary panel of the page
      mainPanel(
         
      )
   )
)

# ---------------------------------- Server ----------------------------------

# Define server logic required to draw your top ten chart 
# (hint: start with your code form `activity-1/`)
server <- function(input, output) {
   # Store the plot in a variable called "top_causes"
   output$top_causes <- renderPlot({
     # Filter down your data based on the selected location and measure
     # (this information is stored in the `input$____` variable)
     
     
     # Store a descriptive page title in a variable
     
     
     # Use `geom_col()` to create the graphic described above
     
   })
}

# Run the application (click the "play" button in the top right hand corner)
shinyApp(ui = ui, server = server)

