library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)

source("app_server.R")
source("intro.R")
source("tab1.R")
source("tab2.R")
source("tab3.R")
source("summary.R")
source("report.R")

ui <- navbarPage(
  "Hate Crimes in the United States (2019-2020)",
  # introTab,
  tab_chart_1,
  tab_chart_2,
  tab_chart_3,
  # summaryTab,
  reportTab
)