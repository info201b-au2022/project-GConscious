#Chart 1 Tab

library(shiny)
library(dplyr)
library(ggplot2)

tab_chart_1 <- tabPanel(
  h4("Chart 1"),
  titlePanel("Income Level vs Number of Hate Crimes"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "state_select",
        label = "Select a state",
        choices = c("None", states_list)
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "chart_1"),
      p("Higher GDP per capita in a state tends to correlate slightly with the amount of hate
        Crimes that occur, this is likely because these areas have a larger, more dense and
        urbanized population")
    )
  )
)