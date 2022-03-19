# install.packages("WDI")
# library(WDI)
# library(data.table)
here::i_am("data-raw/unemp_pop.R")
unemp_pop <- WDI::WDI(
  indicator = c("population"="SP.POP.TOTL", "labor_force"="SL.TLF.TOTL.IN"),
  country = "DE", start = 2015, end = 2020)
unemp_pop <- unemp_pop[,2:5]

data.table::fwrite(
  x = unemp_pop,
  file = here::here("inst/tutorials/ProjectOrga/data/unemp_pop.csv"),
  sep = ",", dec = "."
)

usethis::use_data(unemp_pop, overwrite = TRUE)
