#server.R
library(shiny)
library(proxy)
library(recommenderlab)
library(reshape2)
source("helpercode.R")

shinyServer(function(input, output) {
  
  output$table <- renderTable({
    movie_recommendation(input$select, input$select2, input$select3)
  })
  
}
)