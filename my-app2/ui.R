

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
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
)