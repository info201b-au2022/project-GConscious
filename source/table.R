# Aggregate Table Script
library(dplyr)
library(data.table)

filepath <- "../data/hate_crime.csv"
data <- read.csv(filepath)

filtered_data <- data %>% 
  filter(DATA_YEAR >= 2019) 

aggregate_df <- filtered_data %>% 
  group_by(STATE_NAME) %>% 
  tally() 

aggregate_table <- as.data.table(aggregate_df)


colnames(aggregate_table) = c("State", "Hate Crimes (2019-2020)") 
  