# *The Rise of Hate Crimes in the United States*

## Code Name
Teal Rose

## Project Title
The Rise of Hate Crimes in the United States

## Authors

Amrith Gandham (amrithg@uw.edu)

Anne Clark (noahc845@uw.edu)

Mahir Krishnan (mkrish3@uw.edu)

Sylvia Duan (wzduan@uw.edu)

## Affiliation
INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

## Date
Autumn 2022

## Abstract
In this project we are focusing on the increase of hate crimes from the years 2019 and 2020. We selected these 2 years because there was an uptick of hate crimes in 2020 stemming from the COVID-19 pandemic. The hate crime data is being extracted from government databases which will be used to analyze hate crime rates for each state.

## Keywords
Hate crime, discrimination, bias, targeted groups.

## Introduction
The project will focus on analyzing hate crimes from the years 2019 and 2020. In 2020, the COVID-19 virus had turned into a global public health emergency first originating from China. Throughout the course of the year, there was a large and rapid increase of hate crimes committed against people of East Asian descent and only worsened as the pandemic dragged into 2021. We will be exploring hate crime statistics provided from an FBI database where incidents are reported and compiled from local law enforcement agencies across the country. Using that data, we can compare it to other factors like geography, race of aggressors, income levels, etc.

## Problem Domain
It's vital to bring light to this issue because of many people live in different situations and come from various backgrounds and are not well aware of hate crimes that take place. Individuals can become better informed and can also point out situations if these incidents occur in their communities. Additionally, we also have to consider the direct stakeholders who are the victims of hate crimes. Some of them can be doing normal everyday things and can be senselessly harmed by the actions of others just based on their appearances.


## Research Questions
1. **How does a state’s mean income per capita correlate with the number of hate crimes committed in that state?**
This question is to check how the mean income of the average citizen will affect the rate at which hate crimes are committed. It helps us understand whether a lower quality of life, which can be measured through the average income, will lead to a higher level or frequency of hate crimes that are committed.


1. **How and which individuals were impacted by hate crimes between 2019 and 2020?**
 This question speaking to the quality of life for certain people who were impacted by the hate crimes and how it changed between the 2 years of 2019 and 2020.

1. **What offenses of hate crimes increased in frequency between 2019 and 2020?**
 This research question is more or less straightforward and speaks to how the people and the trends in which hate crimes were committed between the year 2019 and 2020 and which group of people have been targeted more, or which hate crime may have been committed the most.

## The Dataset
1.  Describe how your dataset is related to your problem domain and, specifically, to your research questions. That is, how will your dataset enable you to answer your research questions?

  * Our first source is the [FBI crime data explorer](https://crime-data-explorer.fr.cloud.gov/pages/downloads) which contains both our 2019 and 2020 datasets. This source is crucial to the answering of our research questions as it displays all hate crimes in those years, the state they occurred in, and certain attributes of the victim and offender. This data has been compiled from law enforcement agencies across the countries who've reported hate crimes that have taken in their jurisdictions. This is a very credible dataset
  We also have cited the [USDA](https://data.ers.usda.gov/reports.aspx?ID=17826) as well as the [BEA](https://apps.bea.gov/iTable/?reqid=70&step=1&acrdn=2#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCIyMSJdLFsiQ2xhc3NpZmljYXRpb24iLCJOb24tSW5kdXN0cnkiXSxbIk1ham9yX0FyZWEiLCIwIl0sWyJTdGF0ZSIsWyIwIl1dLFsiQXJlYSIsWyJYWCJdXSxbIlN0YXRpc3RpYyIsIjMiXSxbIlVuaXRfb2ZfbWVhc3VyZSIsIkxldmVscyJdLFsiWWVhciIsWyIyMDIwIiwiMjAxOSJdXSxbIlllYXJCZWdpbiIsIi0xIl0sWyJZZWFyX0VuZCIsIi0xIl1dfQ==) which both show poverty rates and GDP per capita respectively, giving us two different ways to measure economic hardship.


1. Include a table that presents the name of each data file, the number of observations (rows), and the number of variables (columns). (3) Include a full citation to each data file, including URL.

| File            | Observations | Variables | URL                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|-----------------|--------------|-----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| hate_crime.xslx | 219578       | 28        | https://crime-data-explorer.fr.cloud.gov/pages/downloads                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Table_13.csv    | 3243         | 9         | https://crime-data-explorer.fr.cloud.gov/pages/downloads                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Table.csv       | 50           | 3         | [https://apps.bea.gov/iTable/?reqid=70&step=1](https://apps.bea.gov/iTable/?reqid=70&step=1&acrdn=2#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCIyMSJdLFsiQ2xhc3NpZmljYXRpb24iLCJOb24tSW5kdXN0cnkiXSxbIk1ham9yX0FyZWEiLCIwIl0sWyJTdGF0ZSIsWyIwIl1dLFsiQXJlYSIsWyJYWCJdXSxbIlN0YXRpc3RpYyIsIjMiXSxbIlVuaXRfb2ZfbWVhc3VyZSIsIkxldmVscyJdLFsiWWVhciIsWyIyMDIwIiwiMjAxOSJdXSxbIlllYXJCZWdpbiIsIi0xIl0sWyJZZWFyX0VuZCIsIi0xIl1dfQ==) | |
| untitled.csv    | 3243         | 9         | https://data.ers.usda.gov/reports.aspx?ID=17826    

3. Finally, describe the provenance of your dataset, addressing such key questions as: (a) Who collected the data? When? For what purpose? (b) How was the data collection effort funded? Who is likely to benefit from the data or make money? (c) How was the data validated and held secure? Is it credible and trustworthy? (d) How did you obtain the data? Do you credit the source of the data? (About 400 words.)

  * The FBI collected this data. Law enforcement agencies across the country keep record of these incidents and report hate crimes to the FBI. About 18,000 agencies from participating local, county, state, tribal, and federal law enforcement agencies provide hate crime incidents to the FBI. The data collection was funded by the federal government as the FBI is part of the Department of Justice. No one is likely to benefit from the data or make money from it because this is a free resource from the FBI. The FBI conducts internal data quality reviews before publication for a wide variety of crime statistics including hate crime data. Data that does not meet the FBI's criteria for publication will be removed from the dataset. This proves that the data being provided by the FBI goes through strict quality checks to ensure its credibility. The data was obtained through the [Crime Data Explorer](https://crime-data-explorer.fr.cloud.gov/pages/downloads) website.


## Expected Implications
Our project will show what groups are most targeted by what types of hate crimes, showing what has yet to be done in order to ameliorate persistent inequality and bigotry. In addition, our project will uncover how people in certain areas are affected disproportionately based on their geographic location and income levels. It's important to take these into consideration because these can have a real world influence on policymakers and our government. The people who are impacted by these crimes are represented in our local and federal governments. Making these issues aware to these policymakers can prompt new laws or legislation to provide resources to their constituents and better their communities. However, implementing this at the local or state level won't be enough nor provide relief to targeted groups of hate crimes. Establishing legislation at the federal level can safeguard citizens across the country no matter where you live.


## Limitations
Our analysis is limited due to the fact that are several things that are left out of our dataset as they are difficult to quantify or measure. Although the motivation of the hate crime is listed, the only characteristics listed of the victim and offender's identity is race and age. Even with race, many observations are simply listed as "unknown," age is only categorized as "adult" or "juvenile", which prevents deeper analysis on the ways that intersecting oppressed identities may affect hate crime statistics. One way to counteract this is to take the existing data we have and look at it from a broad scope. Even though we may not know the ages of the offenders we can still conduct an analysis that takes into consideration the amount of adults and juveniles committing hate crimes. In order to solve the issue with the "unknown" values we will have to clean the data by removing those observations because they are not viable to use in the analysis.

## References (MLA 9th)
- “Crime Data Explorer.” Federal Bureau of Investigation , 2021, https://crime-data-explorer.fr.cloud.gov/pages/downloads.
- Uniform Crime Report Hate Crime Statistics, 2020 - Amazon Web Services ... https://s3-us-gov-west-1.amazonaws.com/cg-d4b776d0-d898-4153-90c8-8336f86bdfec/hate_crime_2020_summary.pdf.
- “Poverty.” USDA ERS - Data Products, 2022, https://data.ers.usda.gov/reports.aspx?ID=17826.
- “Regional data: GDP and Personal Income.” BEA Interactive Data Application, 2021, [https://apps.bea.gov/iTable/?reqid=701](https://apps.bea.gov/iTable/?reqid=70&amp;step=1&amp;acrdn=2#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyNCwyOSwyNSwzMSwyNiwyNywzMCwzMF0sImRhdGEiOltbIlRhYmxlSWQiLCIyMSJdLFsiQ2xhc3NpZmljYXRpb24iLCJOb24tSW5kdXN0cnkiXSxbIk1ham9yX0FyZWEiLCIwIl0sWyJTdGF0ZSIsWyIwIl1dLFsiQXJlYSIsWyJYWCJdXSxbIlN0YXRpc3RpYyIsIjMiXSxbIlVuaXRfb2ZfbWVhc3VyZSIsIkxldmVscyJdLFsiWWVhciIsWyIyMDIwIiwiMjAxOSJdXSxbIlllYXJCZWdpbiIsIi0xIl0sWyJZZWFyX0VuZCIsIi0xIl1dfQ==.)
