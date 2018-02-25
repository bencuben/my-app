#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$grafico <- renderPlot({
    curve(dBE(x, mu = input$Mu, sigma = input$Sigma, log = FALSE),from=0.01,to=0.99,xlim=c(0,1),
          col="red",lwd=5,xlab="X",ylab="Density",main=expression(paste("densidad de una beta(",mu,",",sigma,")")),las=1)
  })
  
})
