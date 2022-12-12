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
      plotlyOutput(outputId = "chart_2"),
      p("This chart shows an increase in Hate-crimes that are more racially focused across all
        States in 2020, and also shows some regional differences in hate-crimes.  In New York, Anti-Semitic
        hate crimes are the most common, in Alabama, anti-white hate-crimes are the most common,
        however in most states, the most common is Anti-Black/African American, which increased
        substantially in 2020.")
    )
  )
)
