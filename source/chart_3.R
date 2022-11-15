# Third Chart
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

plot(hc_2019, type="o", col("blue"), ylim=g_range)
plot(hc_2020, type="o", col("red"), ylim=g_range)

title(xlab="Years", col.lab=rgb(0,0.5,0))
title(ylab="Total number of incidents of hate crimes", col.lab=rgb(0,0.5,0)
