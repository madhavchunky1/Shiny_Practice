shinyUI(
  pageWithSidebar(
    headerPanel("My first ShinyApp"),
    sidebarPanel(
      selectInput(
        "Distribution",
        "Please select distribution type",
        choices = c("Normal", "Exponential")
      )
    ,
    sliderInput(
      "samplesize",
      "Please select sample size: ",
      min = 10,
      max = 5000,
      value = 1000,
      step = 100
    ),
    conditionalPanel(
      condition = "input.Distribution =='Normal'",
      textInput("mean", "Please select the mean", 10),
      textInput("sd", "Please select Standard Deviation")
    ),
    conditionalPanel(
      condition = "input.Distribution == 'Exponential'",
      textInput("lambda", "Please select Exponential lambda:", 1)
      
    )),
    
    mainPanel("Main Panel")
  )
)