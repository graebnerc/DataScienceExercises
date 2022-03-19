## code to prepare `product_complexity` dataset goes here
library(data.table)
library(dplyr)
library(here)

here::i_am("data-raw/product_complexity.R")

product_complexity <- data.table::fread(
  file = here::here("data-raw/product_complexity.csv"), # exercise data set from slides
  sep = ",", dec = ".",
  colClasses = c(rep("character", 2), rep("double", 2))
  ) %>%
  filter(cgroup=="Periphery countries") %>%
  select(-cgroup) %>%
  mutate(exp_share=round(exp_share*100, 3))

data.table::fwrite(
  x = product_complexity,
  file = here::here("inst/tutorials/ProjectOrga/data/product_complexity.csv"),
  sep = ".", dec = ","
)

usethis::use_data(product_complexity, overwrite = TRUE)
