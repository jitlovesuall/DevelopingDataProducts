library(shiny)
library(dplyr)
library(ggplot2)

# Server side code to handle user's selection
shinyServer(function(input, output) {
  
  # Render a scatter plot using plotly
  output$relationshipPlot <- renderPlot({
    ggplot(dataset, 
           aes_string(x = input$select_x_axis, y = input$select_y_axis)) +
            geom_point(aes(color = factor(Month)))
    
  })
  

})