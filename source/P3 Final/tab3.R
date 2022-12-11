#Chart 3 Tab

library(shiny)
library(dplyr)
library(ggplot2)

tab_chart_3 <- tabPanel(
  h4("Chart 3"),
  titlePanel("Number of Hate Crimes Per Month"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "state_select_input",
        label = "Select a state",
        choices = c("None", states_list)
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "chart_3")
    )
  )
)
