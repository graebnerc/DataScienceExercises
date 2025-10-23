# Create data sets for more wrangling practice
here::i_am("R/wrangling2_data.R")
library(WDI)
library(data.table)
library(dplyr)
library(tidyr)
library(here)

indicators <- c(
  "PovertyShare"="SI.POV.DDAY",
  "Gini"="SI.POV.GINI",
  "CO2pc"="EN.ATM.CO2E.PC",
  "RenewablesElecShare"="EG.ELC.RNEW.ZS",
  "realGDPpc"="NY.GDP.PCAP.CD",
  "Inflation"="NY.GDP.DEFL.KD.ZG",
  "EducationGovExpGDP"="SE.XPD.TOTL.GD.ZS",
  "EducPrimaryCompletionRate"="SE.PRM.CMPT.ZS",
  "Educ_SecondarySchool_male"="SE.SEC.PROG.MA.ZS",
  "Educ_SecondarySchool_female"="SE.SEC.PROG.FE.ZS",
  "Educ_SecondarySchool_total"="SE.SEC.PROG.ZS"
)

full_raw_data <- WDI::WDI(indicator = indicators, start = 1970, extra = TRUE)
full_raw_data <- as_tibble(full_raw_data)

geos <- c("East Asia & Pacific",  "Latin America & Caribbean", "Middle East & North Africa", "World")
incs <- c("High income", "Low & middle income", "Upper middle income", "Lower middle income")

poverty_gdp <- full_raw_data %>%
  select(country, region, year, PovertyShare, realGDPpc) %>%
  filter(!is.na(PovertyShare), !is.na(realGDPpc)) %>%
  pivot_longer(
    cols = c("PovertyShare", "realGDPpc"),
    names_to = "Indicator",
    values_to = "Value"
    ) %>%
  pivot_wider(names_from = "year", values_from = "Value") %>%
  filter(!is.na(`1986`)) %>%
  pivot_longer(
    cols = -c("country", "region", "Indicator"),
    names_to = "year",
    values_to = "Value"
    ) %>%
  filter(year>=1986, year<=2019) %>%
  mutate(year=as.double(year)) %>%
  arrange(year) %>%
  pivot_wider(names_from = "year", values_from = "Value")

poverty_gdp_countries <- poverty_gdp %>%
  dplyr::filter(
    region!="Aggregates", !is.na(region)
  )
fwrite(x = poverty_gdp_countries, file = here("inst/tutorials/Wrangling2/data/poverty_gdp_countries.csv"))
# Import the data set 'poverty_gdp_countries.csv'. Make the data set tidy and consider only the observations after 2000 and countries from Latin America and the Caribbean.

poverty_gdp_regions <- poverty_gdp %>%
  dplyr::filter(
    country %in% geos
  ) %>%
  select(-region)
fwrite(x = poverty_gdp_regions, file = here("inst/tutorials/Wrangling2/data/poverty_gdp_regions.csv"))
# Import the data set 'poverty_gdp_regions.csv' and make it tidy.

renewables_eu <- full_raw_data %>%
  select(country, region, year, RenewablesElecShare) %>%
  filter(year>=1990, !is.na(region), region != "Aggregates") %>%
  pivot_wider(names_from = "region", values_from = "RenewablesElecShare")
fwrite(x = renewables_eu, file = here("inst/tutorials/Wrangling2/data/renewables_electricity.csv"))
# Import the data set 'renewables_electricity.csv'. Make it tidy and only keep countries from the region 'Europe & Central Asia'.

education <- full_raw_data %>%
  select(country, region, year, contains("educ")) %>%
  pivot_longer(cols = contains("educ"), names_to = "Indicator", values_to = "Value") %>%
  filter(!is.na(Value), region != "Aggregates", !is.na(region))
fwrite(x = education, file = here("inst/tutorials/Wrangling2/data/education.csv"))
# Import the data set 'education.csv' and compute average values for the period after 2000 for the different regions. Then make sure the resulting data set is tidy.
