library(tidyverse)
library(markdown)

reportTab <- tabPanel(
  h4("Report"),
  includeMarkdown("p01-proposal.md")
)
