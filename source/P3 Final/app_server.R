library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
library(stringr)
library(scales)

source("chart_1_analysis.R")
source("chart_2_analysis.R")
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

#Chart 2 plot
plot_chart_2 <- function(state_input, year_input){
  
  if(state_input == "None"){
    state_df <- hc_2019_20 %>% 
      select(STATE_NAME, BIAS_DESC, DATA_YEAR) %>% 
      filter(DATA_YEAR == year_input) %>% 
      group_by(BIAS_DESC) %>% 
      tally() %>% 
      rename("Amount" = "n") %>% 
      arrange(desc(Amount)) %>% 
      mutate(BIAS_DESC = recode(BIAS_DESC,
                                "Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)" = "Anti-LGBT (Mixed Group)"
      ))
    state_input = "USA"
  }else{
    state_df <- hc_2019_20 %>% 
      select(STATE_NAME, BIAS_DESC, DATA_YEAR) %>% 
      filter(STATE_NAME == state_input) %>% 
      filter(DATA_YEAR == year_input) %>% 
      group_by(BIAS_DESC) %>% 
      tally() %>% 
      rename("Amount" = "n") %>% 
      arrange(desc(Amount)) %>% 
      mutate(BIAS_DESC = recode(BIAS_DESC,
                                "Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)" = "Anti-LGBT (Mixed Group)"
      ))
  }
  
  
  
  total_hc_state <- sum(state_df$Amount)
  
  state_df <- top_n(state_df,10,Amount)
  
  hc_other <- total_hc_state - sum(state_df$Amount)
  
  state_df[nrow(state_df)+1,] <- list("Other", hc_other)
  
  
  plotted_chart_2 <- ggplot(state_df, 
                            aes(x = reorder(BIAS_DESC, -Amount), 
                                y = Amount, 
                                group = 1)) +
    geom_col() +
    labs(
      title = paste0("Types of Biases in Hate Crimes In: ", state_input),
      x = "Bias",
      y = "Number of Hate Crimes"
    )+
    coord_flip()+
    theme_minimal(base_size = 10)+
    scale_x_discrete(labels = label_wrap(20)) +
    scale_y_continuous(labels = comma) 
  
  return(ggplotly(plotted_chart_2))
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
  
  #Render chart 2
  output$chart_2 <- renderPlotly({
    return(plot_chart_2(input$state_select_input_2,input$year_select_input))
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






