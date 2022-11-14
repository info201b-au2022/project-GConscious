#Summary Information Script
library(dplyr)

filepath <- "./data/hate_crime.csv"
data <- read.csv(filepath)

#Filter data to only 2019/2020 data
hc_2019_20 <- data %>% 
  filter(DATA_YEAR >= 2019) 

hc_2019 <- hc_2019_20 %>% 
  filter(DATA_YEAR == 2019) 

hc_2020 <- hc_2019_20 %>% 
  filter(DATA_YEAR == 2020) 

get_most_common <- function(df){
  output <- df %>% 
    count(BIAS_DESC, sort = TRUE) %>% 
    filter(n == max(n)) %>% 
    pull(BIAS_DESC)
  
  return(output)
}

get_percentage_most_common <- function(df){
  output <- df %>% 
    count(BIAS_DESC, sort = TRUE) %>% 
    filter(n == max(n)) %>% 
    pull(n)
  
  output <- output / nrow(df)
    
  return(output)
}

total_hate_crimes_2019_20 <- nrow(hc_2019_20)

total_hate_crimes_2019 <- nrow (hc_2019)

total_hate_crimes_2020 <- nrow (hc_2020)

most_common_2019 <- get_most_common(hc_2019)
  
most_common_2020 <- get_most_common(hc_2020)

percentage_most_common_2019 <- get_percentage_most_common(hc_2019)
  
percentage_most_common_2020 <- get_percentage_most_common(hc_2020)


  