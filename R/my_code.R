my_server <- function(input, output) {
  output$distPlot <- renderPlot({
    make_my_plot(input$obs)
  })
}

my_ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:", min = 10, max = 500, value = 100)
    ),
    mainPanel(plotOutput("distPlot"))
  )
)

#' @title Function \code{run_my_app}
#' @description Runs the Shiny app.
#' @export
run_my_app = function(){
  shinyApp(ui = my_ui, server = server)
}
