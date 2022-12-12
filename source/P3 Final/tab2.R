#Chart 2 Tab

library(shiny)
library(dplyr)
library(ggplot2)

tab_chart_2 <- tabPanel(
  h4("Chart 2"),
  titlePanel("Number of Hate Crimes by Bias"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "state_select_input_2",
        label = "Select a state",
        choices = c("None", states_list)
      ),
      selectInput(
        inputId = "year_select_input",
        label = "Select a year",
        choices = c(2019,2020)
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "chart_2")
    )
  )
)
