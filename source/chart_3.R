#Chart 3 Line Chart

library(tidyverse)
library(dplyr)
library(ggplot2)

hate_crimes <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-GConscious/main/data/hate_crime_filtered.csv")

formatted <- as.Date.character(hate_crimes$INCIDENT_DATE)
months <- format(formatted, "%b")

hate_crimes <- hate_crimes %>% 
  mutate("month_name" = months)

hc_2020 <- hate_crimes %>% 
  filter(DATA_YEAR == 2020) 

filtered_months <- hc_2020 %>% 
  select(month_name) %>% 
  group_by(month_name) %>% 
  tally() %>% 
  rename("counts" = "n")

month_counts_2020 <- ggplot(data = filtered_months, aes(x = month_name, y = counts, group = 1)) +
  geom_line() +
  scale_y_continuous(limits = c(450, 1450), breaks = seq(400, 1450, 200)) +
  geom_point() +
  labs(
    title = "Number of Hate Crimes Per Month In All States",
    x = "Month",
    y = "Total Number of Hate Crimes"
  )
  