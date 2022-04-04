## code to prepare `wine2dine` dataset goes here
library(data.table)
library(dplyr)

# Source of the data:
# P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis. (2009):
# Modeling wine preferences by data mining from physicochemical properties.
# Decision Support Systems, Vol. 47(4), p. 547-553.
# Obtained form:
# https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/

temp_white <- tempfile(fileext = ".csv")
temp_red <- tempfile(fileext = ".csv")
white_wine_raw <- download.file(
  url = "https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv",
  destfile = temp_white)
red_wine_raw <- download.file(
  url = "https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv",
  destfile = temp_red)

white_w <- data.table::fread(file = temp_white) %>%
  dplyr::mutate(kind="white")
red_w <- data.table::fread(file = temp_red) %>%
  dplyr::mutate(kind="red")

wine2dine <- rbind(white_w, red_w) %>%
  dplyr::select(dplyr::all_of(c("alcohol", "quality", "residual sugar", "kind")))

usethis::use_data(wine2dine, overwrite = TRUE)
