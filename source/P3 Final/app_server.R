library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)

#Chart 1 data 
hate_crimes <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-GConscious/main/data/hate_crime_filtered.csv")
income_levels <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-GConscious/main/data/income_data.csv")

income_levels <- income_levels %>% 
  rename("2019" = "X2019") %>% 
  rename("2020" = "X2020")

grouped_states <- hate_crimes %>% 
  select(STATE_NAME) %>% 
  group_by(STATE_NAME) %>% 
  tally() %>% 
  rename("state_name" = "STATE_NAME") %>% 
  rename("counts" = "n")

income_and_counts <- income_levels %>% 
  full_join(grouped_states) %>%
  rename("income_2020" = "2020") %>% 
  rename("income_2019" = "2019")

states_list <- hate_crimes %>% 
  select(STATE_NAME) %>% 
  group_by(STATE_NAME) %>% 
  tally() %>% 
  pull(STATE_NAME)

plot_chart_1 <- function(state_input){
  state_data <- income_and_counts %>% 
    select(state_name, counts, income_2020) %>% 
    filter(state_name == state_input)
  
  plotted_chart <- ggplot(state_data, aes(x = counts, y = income_2020)) +
    geom_point() +
    labs(
      title = paste0("Number of Hate Crimes vs. Income Per Capita: ", state_input), 
      x = "Total Number of Hate Crimes Per State",
      y = "Income Per Capita for 2020 (Dollars)") 
  
    return(ggplotly(plotted_chart))
}

server <- function(input, output){
  output$chart_1 <- renderPlotly({
    return(plot_chart_1(input$state_select))
  })
}