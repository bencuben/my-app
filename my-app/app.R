library(gamlss)
library(shiny)

ui <-fluidPage(
  titlePanel("Distribucion beta"),
  sidebarLayout(
    sidebarPanel(
      verticalLayout(
        sliderInput(inputId="Mu",
                    label="Mu",
                    min=0.01,
                    max=0.99,
                    value=0.5),
        sliderInput(inputId="Sigma",
                    label="Sigma",
                    min=0.01,
                    max=0.99,
                    value=0.5))
      
    ), mainPanel("Densidad",plotOutput("grafico"))
  )
  
)

server<- function(input, output) {
  output$grafico <- renderPlot({
    curve(dBE(x, mu = input$Mu, sigma = input$Sigma, log = FALSE),from=0.01,to=0.99,xlim=c(0,1),
          col="red",lwd=5,xlab="X",ylab="Density",main=expression(paste("densidad de una beta(",mu,",",sigma,")")),las=1)
  })
}

shinyApp(ui = ui, server = server)

