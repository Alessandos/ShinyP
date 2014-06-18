##
## load library
library(shiny)

## User Interface for Dice Number Guessing
shinyUI(pageWithSidebar(
  headerPanel("Dice Guessing"),
  
  ## Input in Sidebar Panel
  sidebarPanel(
    h4("Guess the correct numbers of the dices"),
    ## Sliders for Guessing the Dice Numbers
    sliderInput('dice1', 'Dice 1',value = 1, min = 1, max = 6, step = 1,),
    sliderInput('dice2', 'Dice 2',value = 2, min = 1, max = 6, step = 1,),
    sliderInput('dice3', 'Dice 3',value = 3, min = 1, max = 6, step = 1,),
    sliderInput('dice4', 'Dice 4',value = 5, min = 1, max = 6, step = 1,),
    sliderInput('dice5', 'Dice 5',value = 6, min = 1, max = 6, step = 1,),
    hr(),
    hr(),
    h4("Good Luck (a look under the diagram helps!")
    
  ),
  
  ## Output in Main Panel
  mainPanel(
    h4("Your current situation:"),
    plotOutput('Dices5')
  )
))




