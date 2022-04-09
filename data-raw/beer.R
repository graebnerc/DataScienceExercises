## code to prepare `beer` dataset goes here
library(data.table)
library(dplyr)
library(haven)
# Source of the data:
# Hill, R, Griffiths, W., Lim, G.: Principles of Econometrics
# http://www.principlesofeconometrics.com/poe4/poe4stata.htm

beer_file <- tempfile(fileext = ".dta")
beer_dta <- download.file(
  url = "http://www.principlesofeconometrics.com/poe4/data/stata/beer.dta",
  destfile = beer_file)

beer <- read_dta(beer_file) %>%
  rename(consumption=q,
         price=pb,
         price_liquor=pl,
         price_other=pr,
         income=i)

usethis::use_data(beer, overwrite = TRUE)
