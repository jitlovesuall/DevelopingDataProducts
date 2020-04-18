library(shiny)

# load the data
dataset = read.csv("Data/hw1_data.csv")

# Define the overall UI
shinyUI(
  # Use a fluid Bootstrap layout
  fluidPage(
      # Give the page a title
      titlePanel("Understanding relationship between air quality parameters"),
      # Generate a row with a sidebar
      sidebarLayout(
        # Define the sidebar with input to select the parameters
        sidebarPanel(
          helpText("This app plots the x and y values of different air quality parameters based on your inputs."), 
          hr(),
          selectInput("select_x_axis", "Select x axis:", choices = colnames(dataset[1:4])),
          hr(),
          selectInput("select_y_axis", "Select y axis:", choices = colnames(dataset[1:4]))
        ),
        # Create a spot for the scatter plot
        mainPanel(
          plotOutput("relationshipPlot")
        )
      )
  )
)