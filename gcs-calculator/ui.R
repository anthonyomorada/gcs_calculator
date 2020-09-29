#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

##### UI #####
library(shiny)

fluidPage(
    
    titlePanel("GCS Outcome Calculator"),
    
    sidebarLayout(
        sidebarPanel(
             numericInput('Age', 'Age', 50),            
             selectInput("Gender", "Gender?", choices = c("Female", "Male", "Not Known/Not Recorded BIU 2")),
             selectInput("Alcohol", "Alcohol?", choices = c("No (not tested)", "No (confirmed by test)", "Not Applicable BIU 1", "Not Known/Not Recorded BIU 2", "Yes (confirmed by test [beyond legal limit])", "Yes (confirmed by test [trace levels])")),
             numericInput('ISSAIS', 'ISSAIS', 0),
             numericInput('GCSTOT', 'GCSTOT', 15),
            hr(),
        
            p('Test:',
              a("Test", 
                href = "Null")),
            hr()
        ),
        
        mainPanel(
            h1('Input Table'),
            tableOutput("result"),
            hr(),
            h1('Risk of Mortality'),
            textOutput("mortality"),
            h1('Chance of discharge to home'),
            textOutput("home"),
            h1('Predicted length of stay'),
            textOutput("los"),
            )
        )
    )  