library(shiny)

shinyServer(
    function(input, output) {
     # metric
     #   output$obmi <- renderPrint({input$weightPounds / ( (input$heightFeet * 12 + input$heightInches)^2)})
     # imperial
       output$obmi <- renderText({(input$weightPounds / ( (input$heightFeet * 12 + input$heightInches)^2))*703})
       
    }
)
