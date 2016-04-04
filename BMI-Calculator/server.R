shinyServer(function(input, output) {

    paste0("For weight ",input$mass, " kg and height ", input$height, " cm.")
  })
  
  output$result <- renderText({
    bmi = input$mass / (input$height / 100)^2
    
    if      (bmi <= 18.5) info = "<b'>Underweight.</b>"
    else if (bmi <= 25.0) info = "<b>Normal.</b>"
    else if (bmi <= 30.0) info = "<b'>Overweight.</b>"
    
    paste0("For the input, BMI calculated is ", "<b>", round(bmi, 2), "</b>", ".<br> This is considered as ", info)
  })
  

})