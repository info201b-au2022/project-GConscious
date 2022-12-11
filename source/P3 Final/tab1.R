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
      plotlyOutput(outputId = "chart_1")
    )
  )
)