library(tidyverse)
library(dplyr)
library(ggplot2)

hate_crimes <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-GConscious/main/data/hate_crime_filtered.csv")

hc_2019_20 <- hate_crimes %>%
  filter(DATA_YEAR == 2020 || DATA_YEAR == 2019)



