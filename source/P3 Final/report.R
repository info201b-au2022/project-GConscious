library(tidyverse)
library(markdown)

reportTab <- tabPanel(
  h4("Report"),
  includeMarkdown("../../docs/p01-proposal.md")
)
