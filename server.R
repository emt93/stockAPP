# server.R

library(quantmod)

shinyServer(function(input, output) {
        
        dataInput <- reactive({
                getSymbols(input$symb, src = "yahoo", 
                           from = input$dates[1],
                           to = input$dates[2],
                           auto.assign = FALSE)

        })
        
        output$plot <- renderPlot({   
                data <- dataInput()
 
                chartSeries(data, theme = chartTheme("black"), 
                            type = "candlestick")
               
                if (input$rsi) addRSI()
                
               
              
        
        })
})

