# Aggregate Table Script
library(dplyr)

filepath <- "./data/hate_crime.csv"
data <- read.csv(filepath)

filtered_data <- data %>% 
  filter(DATA_YEAR >= 2019) 

aggregate_table <- filtered_data %>% 
  group_by(STATE_NAME) %>% 
  tally() %>% 
  table()

colnames(aggregate_bable) = c("State", "Hate Crimes (2019-2020)") 


  