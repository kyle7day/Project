library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Grade Calculator"),
    
    sidebarPanel(
        h3("Input Grades"),
        
        p("For assginment enter the name of the assignment. 
          For weight use the arrows to give the percentage of final class grade 
        given to the assignment, if decimal type in. For grade you can also use
        the arrow keys or type in manually for decimals. When finished hit the 
          submit button at the bottom of the page to see final grade. You should 
          makesure that all weights add to 100, unless extra credit is involved."
        ),
        
        textInput(inputId="assign1", "Assginment 1"),
        numericInput("weight1", "weight", 0, min = 0, max = 100),
        numericInput("grade1", "grade", 0),
        
        textInput(inputId="assign2", "Assginment 2"),
        numericInput("weight2", "weight", 0, min = 0, max = 100),
        numericInput("grade2", "grade", 0),
        
        textInput(inputId="assign3", "Assginment 3"),
        numericInput("weight3", "weight", 0, min = 0, max = 100),
        numericInput("grade3", "grade", 0),
        
        textInput(inputId="assign4", "Assginment 4"),
        numericInput("weight4", "weight", 0, min = 0, max = 100),
        numericInput("grade4", "grade", 0),
        
        textInput(inputId="assign5", "Assginment 5"),
        numericInput("weight5", "weight", 0, min = 0, max = 100),
        numericInput("grade5", "grade", 0),
        
        textInput(inputId="assign6", "Assginment 6"),
        numericInput("weight6", "weight", 0, min = 0, max = 100),
        numericInput("grade6", "grade", 0),
    
        submitButton("Submit")
            
        
        
        
    ),
    mainPanel(
        h3('Final Grade'),
        
        textOutput("final")
    )
))