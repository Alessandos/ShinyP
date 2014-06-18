library(shiny)

## Dice-Guessing Application
## The task is to guess the numbers on 5 dice
shinyServer(
  function(input, output) {
    ## dice-numbers by chance
    code <- sample.int(6, 5, replace=T)
        
    ## read the guessing input
    output$Dices5 <- renderPlot({  
      dice1 <- input$dice1
      dice2 <- input$dice2
      dice3 <- input$dice3
      dice4 <- input$dice4
      dice5 <- input$dice5
      dices=c("dice1"=dice1, "dice2"=dice2, "dice3"=dice3, "dice4"=dice4, "dice5"=dice5)
      
      ## calculate correct numbers and correct numbers/positions
      correct <- sum(code==dices) #number of correct guesses 
      correctNums <- sum(order(code)==order(dices)) #correct numbers guessed
      out1 <- paste("Correct Guesses: ", correct, " Correct Numbers: ", correctNums,
                    " Code: ", code[1], code[2], code[3], code[4], code[5])
      
      ## plotting the whole thing as a line chart
      plot(dices, xlab='Dices 1 - 5', col='lightblue',main='Guessing the Numbers',
           type="l", ylim=c(1, 6), ylab="Numbers", sub=out1)
      points(dices, col="red", pch=19)  
      
    })
        
  }
)

