# This file is used to add packages to renv that are used in tutorials
# that include underscores in their code. This feature of the gradethis
# package is not yet handled by renv, which is why the relevant folders must
# be put in .renvignore for now

library(learnr)
library(tibble)
library(stringr)
library(dplyr)
library(gradethis)
library(ggcheck)

if (FALSE){
  v_1 <- 1:4
  v_2 <- letters[1:4]
  v_3 <- c(TRUE, FALSE, TRUE, FALSE)
  tib_1 <- tibble("vec_1"=v_1, "vec_2"=v_2, "vec_3"=v_3)
  dplyr::glimpse(tib_1)
  stringr::str_detect("b", v_2)
}
