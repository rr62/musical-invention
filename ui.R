library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("BMI Calculation"),
        sidebarPanel(
        numericInput('weightPounds', 'Weight (lbs)', 150, min = 1, max = 400, step = 1),
        numericInput('heightFeet', 'Height (feet)', 5, min = 1, max = 400, step = 1),
        numericInput('heightInches', 'Height (inches)', 0, min = 1, max = 11, step = 1)
    

    ),
    mainPanel(
    h2("by Ram Ravichandran"),
    h3("June 3, 2018"),
    p("Plese enter your weight  and height in the left side panel."),
    p("Your BMI will be calculated and shown below:"),
    h3('BMI'),
    verbatimTextOutput("obmi"),
    h3("BMI Ranges"),
    p("Below 18.5  Underweight"),
    p("18.5 -- 25  Normal weight"),
    p("25   -- 30  Overweight"),
    p("Above 30    Obese"),
    p( ),
    p("A person can use as the above classification to set up"),
    p("appropriate physical activities and food consumption habits")
        
            )
)
)