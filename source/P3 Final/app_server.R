library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)

source("chart_1_analysis.R")
source("chart_3_analysis.R")

#Chart 1 plot
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

#Chart 3 plot
plot_chart_3 <- function(state_input){
  state_df <- hc_2020 %>%
    select(month_name, STATE_NAME) %>%
    filter(STATE_NAME == state_input) %>% 
    group_by(month_name) %>%
    tally() %>%
    rename("counts" = "n") %>% 
    mutate(month_name = factor(month_name, levels = month.abb)) %>%
    arrange(month_name)
  
  plotted_chart_3 <- ggplot(state_df, aes(x = month_name, y = counts, group = 1)) +
    geom_line() +
    geom_point() +
    labs(
      title = paste0("Number of Hate Crimes Per Month In: ", state_input),
      x = "Month",
      y = "Total Number of Hate Crimes"
    )
  
  return(ggplotly(plotted_chart_3))
}


server <- function(input, output){
  #Render chart 1
  output$chart_1 <- renderPlotly({
    if(input$state_select == "None"){
      return(ggplotly(plotted_default))
    } else{
    return(plot_chart_1(input$state_select))
    }
  })
  
  #Render chart 3
  output$chart_3 <- renderPlotly({
    if(input$state_select_input == "None"){
      return(ggplotly(chart3_default_plot))
    } else{
      return(plot_chart_3(input$state_select_input))
    }
  })
  
}






