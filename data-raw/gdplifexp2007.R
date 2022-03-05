## code to prepare `gdplifexp2007` dataset

gdplifexp2007 <- gapminder::gapminder %>%
  dplyr::filter(year=="2007") %>%
  dplyr::select(-year) %>%
  dplyr::arrange(desc(pop))

usethis::use_data(gdplifexp2007, overwrite = TRUE)
