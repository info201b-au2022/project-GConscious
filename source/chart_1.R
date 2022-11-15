# First Chart (Scatter plot - Income Level vs Number of Hate Crimes)

library(tidyverse)
library(dplyr)
library(ggplot2)

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

income_vs_counts_2020 <- ggplot(data = income_and_counts) +
  geom_point(mapping = aes(x = counts, y = income_2020)) +
  labs(
       title = "Number of Hate Crimes vs. Income Per Capita", 
       x = "Total Number of Hate Crimes Per State",
       y = "Income Per Capita for 2020 (Dollars)") 


income_vs_counts_2019 <- ggplot(data = income_and_counts) +
  geom_point(mapping = aes(x = counts, y = income_2019)) + 
  labs(
    title = "Number of Hate Crimes vs. Income Per Capita", 
    x = "Total Number of Hate Crimes Per State",
    y = "Income Per Capita for 2019 (Dollars)") 



