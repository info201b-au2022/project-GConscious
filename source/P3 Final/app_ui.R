library(shiny)
library(dplyr)
library(ggplot2)

source("intro.R")
source("tab1.R")
source("tab2.R")
source("tab3.R")
source("summary.R")
source("report.R")

ui <- navbarPage(
  "Hate Crimes in the United States (2019-2020)",
  introTab,
  tabInt1,
  tabInt2,
  tabInt3,
  summaryTab,
  reportTab
)