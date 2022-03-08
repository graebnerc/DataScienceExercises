## code to prepare `nycflights21_small` dataset goes here

nycflights21 <- anyflights::anyflights(c("JFK", "LGA", "EWR"), 2021)
set.seed(123)
nyflights21 <- nycflights21$flights

nycflights21_small <- select(nyflights21, arr_delay, dep_delay, month, carrier, distance)
nycflights21_small <- filter(nycflights21_small, across(everything(), ~ !is.na(.x)))
rdn_indices <- sample(1:nrow(nycflights21_small), 50000, replace = FALSE)
nycflights21_small <- nycflights21_small[rdn_indices, ]

usethis::use_data(nycflights21_small, overwrite = TRUE)
