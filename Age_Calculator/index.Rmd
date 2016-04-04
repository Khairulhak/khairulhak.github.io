---
title       : Age Calculator
subtitle    : Shiny App For Age Calculation and Zodiac Reference
author      : Khairul Ashraf bin Basul Hak
job         : Coursera Data Science Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This application is done using R Studio with Shiny Library. This application is hosted at Shinyapps.io and can be accessed from this link: https://khairulhak.shinyapps.io/Age_Calculator/

This application is intended to calculate age for any given birthdate. A date input box is used so that user should not be bothered to key in the date manually. Instead, user only need to click on the date input box and a small calendar will shows up. User can choose any data by clicking on the calendar.

Other than that, there are two(2) other options that need user's input. The options are checkboxes to show the calculated age and to show zodiac sign for the birth date entered.

If there are no input given, this application will display a suitable message.

--- .class #id 

## User Interface (ui.R)

For user interface, there are side panel and main panel. Three 2 types of input method is used namely dateInput and checkboxGroupInput.

These are the codes for ui.R:

```
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Age Calculator"),
  sidebarPanel(
    p("This is an age calculator application. This application allows user to pick any date of birth for the calenar and calculate the age for the given birtdate."),
    dateInput("birthday", "Birthdate:"),
    em("Click on the textbox to display calendar and choose any of the options below:"),
    p(),
    checkboxGroupInput("display", "Result options:",
                       c("Calculate age" = "1",
                         "Display zodiac" = "2"))
  ),

```

---

## User Interface (ui.R)

Continue from previos slide:

```
  mainPanel(
    h1("Results"),
    img(src="zodiac.png", height = 400, width = 400),
    p(),
    strong("Below are the results for the given birthdate with the chosen options:"),
    p('The given birth day and date:'),
    verbatimTextOutput("age"),
    verbatimTextOutput("zod")
    
  )
))
```

---

## Processing (server.R)

For processing part, I used two (2) functions to check the input from the users and display the result. These are part of my codes:

```
library(shiny)
shinyServer(
function(input, output) {
  
  output$age <- renderPrint({format(input$birthday,"%A %d %B %Y")})
  output$zod <- renderPrint(ProcessOptions({input$display}))
  ...
  
```

It will be too lengthy to put the codes of my server.R in this slide but the codes are available in my github. 

https://github.com/Khairulhak/Coursera-ShinyApp-Age-Calculator

Thank you.

```



