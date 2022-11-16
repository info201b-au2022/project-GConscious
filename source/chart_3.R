library(tidyverse)
library(dplyr)
library(ggplot2)

hate_crimes <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-GConscious/main/data/hate_crime_filtered.csv")

hc_2019_20 <- data %>% 
  filter(DATA_YEAR >= 2019) 

hc_2019 <- hc_2019_20 %>% 
  filter(DATA_YEAR == 2019) 

hc_2020 <- hc_2019_20 %>% 
  filter(DATA_YEAR == 2020) 

g_range<- (0, hc_2019, hc_2020)

ggplot(data=hc_2019, aes(x=time, y=number_of_hate_crimes)) +
  geom_line()
ggplot(data=hc_2020, aes(x=time, y=number_of_hate_crimes)) +
  geom_line()

