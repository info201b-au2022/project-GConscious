# Second Chart
library(tidyverse)
library(dplyr)
library(stringr)
library(ggplot2)
library(scales)

filepath <- "./data/hate_crime.csv"
data <- read.csv(filepath)

#Filter data to only 2019/2020 data
filtered_data <- data %>% 
  filter(DATA_YEAR >= 2019) 
  
summarized_data <- filtered_data %>% 
  count(BIAS_DESC, sort = TRUE) %>% 
  top_n(n,n = 10) %>% 
  mutate(BIAS_DESC = recode(BIAS_DESC,
                            "Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)" = "Anti-LGBT (Mixed Group)"
                            ))

ggplot(summarized_data) +
  geom_col(
    mapping = aes(x= BIAS_DESC, y = n)
  )+
  coord_flip()+
  theme_gray(base_size = 10)+
  scale_x_discrete(labels = label_wrap(25)) +
  scale_y_continuous(labels = comma) +
  labs(x = NULL, y = "Total Hate Crimes")
