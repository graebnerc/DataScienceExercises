## code to prepare `aggGDPlifexp` dataset goes here
library(dplyr)

aggGDPlifexp <- gapminder::gapminder %>%
  dplyr::select(-country) %>%
  dplyr::group_by(continent, year) %>%
  dplyr::summarise(
    dplyr::across(.cols = dplyr::everything(), .fns = mean),
    .groups = "drop")

usethis::use_data(aggGDPlifexp, overwrite = TRUE)
