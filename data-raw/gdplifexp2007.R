## code to prepare `gdplifexp2007` dataset

gdplifexp2007 <- gapminder::gapminder %>%
  filter(year=="2007") %>%
  dplyr::select(-year) %>%
  arrange(desc(pop))

usethis::use_data(gdplifexp2007, overwrite = TRUE)
