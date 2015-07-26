library(shiny)
shinyServer(
    function(input, output) {
            
        output$final <- renderPrint({(sum(c(
            
            (input$weight1 * input$grade1),
            (input$weight2 * input$grade2),
            (input$weight3 * input$grade3),
            (input$weight4 * input$grade4),
            (input$weight5 * input$grade5),
            (input$weight6 * input$grade6)
            ), na.rm = TRUE)/100)
        })
        
    }
)