# quit-button-redirect
Example of R Shiny application redirecting user to another web page after pressing the quit button

### Getting Started

Open the `quit_button_redirect.Rproj` file in your RStudio IDE.

In the R terminal install `renv` and use the `renv.lock` file to install required packages:
```R
install.packages("renv")
renv::hydrate()
```

Run the application in a web browser:
```R
shiny::runApp(launch.browser = TRUE)
```

Press the button labeled `Quit` to stop the Shiny application and be redirected to another web page.
