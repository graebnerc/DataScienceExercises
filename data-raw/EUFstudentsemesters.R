library(tibble)
## code to prepare `EUFstudentsemesters` dataset goes here
# Source: intranet of the Europa-University Flensburg (May 2022)

EUFstudentsemesters <- tibble::tibble(
  "Semester" = c(
    rep("1", 24),
    rep("2", 1725),
    rep("3", 33),
    rep("4", 1891),
    rep("5", 24),
    rep("6", 1159),
    rep("7", 30),
    rep("8", 520),
    rep("9 or higher", 469)
  )
)
EUFstudentsemesters <- EUFstudentsemesters[sample(nrow(EUFstudentsemesters)),]
EUFstudentsemesters[["ID"]] <- seq(1, nrow(EUFstudentsemesters))

usethis::use_data(EUFstudentsemesters, overwrite = TRUE)
