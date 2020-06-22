library(shiny)
library(shinyjs)

jscode <- '
shinyjs.redirectHome = function() {
  window.location.href = "https://datacenterhub.org/members/myaccount";
}'

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Setup extra javascript
    useShinyjs(),
    extendShinyjs(text = jscode, functions=c("redirectHome")),
    
    # Application title
    titlePanel("Quit Button Redirect"),

    actionButton("quit", "Quit", icon = icon("circle-o-notch"))
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    observeEvent(input$quit, {
        stopApp()
        js$redirectHome()
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
