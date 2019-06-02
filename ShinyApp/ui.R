#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)
library(tm)

library(shiny)
shinyUI(   fluidPage(
  headerPanel("Capstone Project, Johns Hopkins Data Science Course - Word Prediction"
  ),
  sidebarPanel(
    h3("Introducton"),
    p("This application predicts the next possible word in a phrase or sentence. Type word(s) on the text field on the screen
      and the next words will display in buttons below the field. Click on the word you want and it will be added to the field."),
    p("This application uses NLP (Natural Language Processing), namely, n-grams, Katz's back-off model to perform text prediction.")
    ),
  mainPanel(
    h3("Input"),
    textInput("inputTxt", "Type in word(s) below:", width = "90%"),
    uiOutput("words"),
    br()
  )
))