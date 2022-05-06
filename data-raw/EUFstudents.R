## code to prepare `EUFstudents` dataset goes here
library(tibble)
set.seed(123)
# https://www.uni-flensburg.de/die-universitaet/profil-der-euf/zahlen-und-fakten?sword_list%5B0%5D=studierende&cHash=58017981a73d073af3f3633bf8d96803
n_students <- 6403
n_students_female <- 0.7*n_students
n_students_male <- n_students-n_students_female

# Sources:
# Wikipedia
# https://www.biancahoegel.de/mathe/statistik/standardabweichung.html
avg_height_female <- 162.8
avg_height_male <- 175.4
sd_height_female <- 6.39
sd_height_male <- 7.46

pop_females <- tibble::tibble(
  "Gender"="female",
  "Height"=rnorm(
    n = n_students_female,
    mean = avg_height_female, sd = sd_height_female)
)
pop_male <- tibble::tibble(
  "Gender"="male",
  "Height"=rnorm(
    n = n_students_male,
    mean = avg_height_male,
    sd = sd_height_male)
)
EUFstudents <- rbind(pop_females, pop_male)

usethis::use_data(EUFstudents, overwrite = TRUE)
