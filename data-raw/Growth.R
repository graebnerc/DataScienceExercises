# install.packages("WDI")
# library(WDI)
# library(data.table)
here::i_am("data-raw/Growth.R")
Growth <- WDI::WDI(
  indicator = c("Growth"="NY.GDP.MKTP.KD.ZG"),
  country = "DE", start = 2015, end = 2020)
Growth <- Growth[,2:4]

data.table::fwrite(
  x = Growth,
  file = here::here("inst/tutorials/ProjectOrga/data/growth_data_1.csv"),
  sep = ";", dec = "."
  )

usethis::use_data(Growth, overwrite = TRUE)
