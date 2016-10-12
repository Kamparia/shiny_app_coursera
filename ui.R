#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(rsconnect)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Simple Calculator..."),
  
  # Sidebar with input widgets for mathematical calculations
  sidebarLayout(
    sidebarPanel(
      (""),
      # selectInput for the variable operator
      selectInput(
        "operator", "Select mathematical operation:",
        c(
          "Division (/)" = "division",
          "Multiplication (*)" = "multiplication",
          "Subtraction (-)" = "subtraction",
          "Addition (+)" = "addition"
        )
      ),
      
      # numerical input of the first value
      numericInput("first", "Enter your first value:", "5"),
      
      # numerical input of the second value
      numericInput("second", "Enter your second value:", "2")
    ),
    
    # Show the output of the computation generated from the server side
    mainPanel(
      (""),
      # output the result from the server
      textOutput("result")
    )
  )
))
