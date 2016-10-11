#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to make mathematical computations
shinyServer(function(input, output) {
  # reactive function of the variale operator
  operator <- reactive({
    input$operator
  })

  # reactive function of the variale first
  first <- reactive({
    as.integer(input$first)
  })

  # reactive function of the variale second
  second <- reactive({
    as.integer(input$second)
  })  
  
  # outputs the result to the UI
  output$result <- renderText(
    # conditional statement based on selected operation
    if(operator() == "division"){
      value <- first() / second()
      paste("Answer equals ", value)
    }
    
    else if(operator() == "multiplication"){
      value <- first() * second()
      paste("Answer equals ", value)
    }
    
    else if(operator() == "subtraction"){
      value <- first() - second()
      paste("Answer equals ", value)
    }
    
    else if(operator() == "addition"){
      value <- first() + second()
      paste("Answer equals ", value)      
    }
    
    else{
      paste({"Invalid operations"})
    }
  )
  
  
})