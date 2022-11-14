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
  
#summarize data to top 10
summarized_data <- filtered_data %>% 
  count(BIAS_DESC, sort = TRUE) %>% 
  top_n(n,n = 10) %>% 
  #substitute long string
  mutate(BIAS_DESC = recode(BIAS_DESC,
                            "Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)" = "Anti-LGBT (Mixed Group)"
                            ))

plot <- ggplot(summarized_data) +
  geom_col(
    mapping = aes(x= BIAS_DESC, y = n)
  )+
  coord_flip()+
  theme_minimal(base_size = 10)+
  scale_x_discrete(labels = label_wrap(20)) +
  scale_y_continuous(labels = comma) +
  labs(x = NULL, y = "Total Hate Crimes")
