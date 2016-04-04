shinyUI(fluidPage(
  titlePanel("Body Mass Index (BMI) Calculator"),
  
  sidebarLayout(sidebarPanel(
    
    helpText("Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women"),
    
    sliderInput(
      inputId = "mass",
      label = strong("Weight (kg):"),
      min = 30,
      max = 150,
      value = 60
    ),
    
    sliderInput(
      inputId = "height",
      label = strong("Height (cm):"),
      min = 130,
      max = 250,
      value = 150,
    )
    ),
    
    mainPanel(
      uiOutput("input"),
      uiOutput("result"),
      uiOutput("graph")
    ))
))