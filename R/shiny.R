my_server <- function(input, output) {
  output$distPlot <- renderPlot({
    my_plot(input$obs)
  })
}

# Needs to be a function so nested dependencies are lazily loaded.
my_ui <- function(){fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:", min = 10, max = 500, value = 100)
    ),
    mainPanel(plotOutput("distPlot"))
  )
)}

#' @title Function \code{my_app}
#' @description Runs the Shiny app.
#' @export
my_app = function(){
  shinyApp(ui = my_ui(), server = my_server)
}
