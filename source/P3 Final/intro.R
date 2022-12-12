#intro tab

introTab <- tabPanel(
  h4("Introduction"),
  titlePanel("Hate Crimes in the United States (2019-2020)"),
  p("2020 was a year where many events that were unprecedented in recent history occurred, 
    especially in the United States. The death of George Floyd in particular led to some of the
    largest civil rights protests in American history.  This paper seeks to look at the ways
    in which these events affected the amount and types that occurred, as well as exanmining
    other factors that may increase frequency of hate crimes."),
  p("Our data comes from the FBI Crime EXplorer data from the years of 2019 to 2020."),
  p("Our research questions are:"),
  strong("How does a state’s mean income per capita correlate with the number of hate crimes committed in that state?"),
  p("We found that a higher mean income tended to correlate with more hate crimes, this is likely becuase these
     States with a higher income tended to be more dense and populous."),
  strong("How and which individuals were impacted by hate crimes between 2019 and 2020?"),
  p("The groups that were the most over-represented in the data were African-Americans, Jewish 
    People and LGBT people"),
  strong("What biases of hate crimes increased in frequency between 2019 and 2020?"),
  p("2020 saw a large Increase in hate crimes overall, the hate crimes that increased the most were Anti-Black
    and Anti-white hate-crimes."),
 img(src = "https://www.splcenter.org/sites/default/files/2020_hate_crimes_hero_copy.jpg", height="30%", width="30%"),
  p("image source: https://www.splcenter.org/hate-crimes-explained")
)