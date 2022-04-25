## code to prepare `econjournals` dataset goes here
library(readxl)
library(data.table)
library(dplyr)

# Source of the data:
# Ted Bergstrom's Journal Pricing Page:
# New Data on  Journal Prices in Economics, collected by Elizabeth Dhuey and
# Ted Bergstrom
# https://www.econ.ucsb.edu/%7Etedb/Journals/pricing.html

journal_file <- tempfile(fileext = ".xls")
journal_xls <- download.file(
  url = "https://www.econ.ucsb.edu/~tedb/Journals/2004EconJournalsAllInfo.xls",
  destfile = journal_file)

econjournals <- readxl::read_xls(
  path = journal_file, range = "ALL2!A4:AG343") %>%
  dplyr::rename(
    sub_price = `Price...9`,
    pages_py = `Per Year...14`,
    impact=`Factor...19`,
    citations=`Cites...20`,
    papers=Papers,
    first_year=Published,
    field=Field,
    title=`Journal Title`,
    publisher=`Publisher`,
    publisher_type=`Publisher Type`
  ) %>%
  dplyr::select(dplyr::all_of(c(
    "title",
    "field",
    "publisher",
    "publisher_type",
    "first_year",
    "sub_price",
    "pages_py",
    "impact",
    "citations",
    "papers"
  ))) %>%
  dplyr::filter(!stringr::str_detect(title, "Package"), !sub_price=="n/a") %>%
  dplyr::mutate(
    dplyr::across(.cols = all_of(c(
      "sub_price", "pages_py", "impact",
      "citations", "papers", "first_year"
    )), .fns = as.double)
  )

usethis::use_data(econjournals, overwrite = TRUE)
