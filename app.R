library(shiny)
adv_data <- read.csv("Advertising.csv")

ui <- fluidPage(
  headerPanel('Choose Advertising media budget'),
  sidebarPanel(
    selectInput('xcol', 'Advertising Media', names(adv_data[,2:4]))
  ),
  mainPanel(
    plotOutput('salesplot')
  )
)

server <- function(input, output) {
  
  selectedData <- reactive({
    adv_data[, input$xcol]
  })
  

  output$salesplot <- renderPlot({
    plot(selectedData(), adv_data$Sales, main="Linear Regression", xlab="Media", ylab="Sales")
    abline(lm(adv_data$Sales~selectedData()), col="red")
  })
  
}

shinyApp(ui = ui, server = server)
