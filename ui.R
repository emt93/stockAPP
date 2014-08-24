library(shiny)

shinyUI(fluidPage(
        
        br(),
        
        titlePanel("stockAPP"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("Pick a stock ticker. 
        Information originates from yahoo finance."),
                        
                        textInput("symb", "Symbol", "YHOO"),
                        
                        dateRangeInput("dates", 
                                       "Date range",
                                       start = "2014-01-01", 
                                       end = as.character(Sys.Date())),
        
                        checkboxInput("rsi", 
                                      "Add relative strength index", value = FALSE)
                ),
                
                mainPanel(plotOutput("plot"))
        )
))