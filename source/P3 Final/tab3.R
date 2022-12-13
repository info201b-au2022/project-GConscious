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
      ),
      selectInput(
        inputId = "year_input",
        label = "Select a year",
        choices = c("2019", "2020")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "chart_3"),
      p("This chart shows how hate crimes were affected throughout the year 2020 at different
        months.  The chart shows that in many states there was a dip from March to May due to the
        initial lockdowns of the COVID-19 pandemic, followed by a spike in June-July of 2020 due
        to the protests following the death of George Floyd.")
    )
  )
)
