#' Data on GDP, life expectancy, and population size in 2007.
#'
#' A subset of the gapminder data on population size, life expectancy,
#'  and GDP per capita levels in 2007.
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{country}{Country name}
#'   \item{continent}{Continent name}
#'   \item{lifeExp}{Life expectancy at birth, in years}
#'   \item{pop}{Population in 2007, in nb of people}
#'   \item{gdpPercap}{GDP per capita, in 2005-international dollars}
#' }
#' @source \url{https://github.com/jennybc/gapminder}
"gdplifexp2007"

#' Aggregated on GDP, life expectancy, and population over time.
#'
#' The gapminder data on population size, life expectancy,
#'  and GDP per capita levels, aggregated over continents.
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{continent}{Continent name}
#'   \item{lifeExp}{Average life expectancy at birth, in years}
#'   \item{pop}{Average population, in nb of people}
#'   \item{gdpPercap}{Average GDP per capita, in 2005-international dollars}
#' }
#' @source \url{https://github.com/jennybc/gapminder}
"aggGDPlifexp"

#' A reduced data set on flights from NYC in 2021
#'
#' A random sample of 50k flights (out of 336776) from NYC in 2021.
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{dep_delay, arr_delay}{Departure and arrival delays, in
#'     minutes. Negative times represent early departures/arrivals.}
#'   \item{month}{Month of departure.}
#'   \item{carrier}{Two letter carrier abbreviation.}
#'   \item{distance}{Distance between airports, in miles.}
#' }
#' @source \url{https://github.com/simonpcouch/anyflights}
"nycflights21_small"

#' Data on wine properties
#'
#' A data set containing information about the alcohol and residual sugar
#'  contained in white and red wines, as well as their quality
#'
#' @format A data frame with 6497 rows and 3 variables:
#' \describe{
#'   \item{alcohol}{The alcohol content of the wine}
#'   \item{quality}{An quality score between 0 and 10, based on sensory data}
#'   \item{residual sugar}{The amount of sugar left in the wine}
#'   \item{kind}{The kind of wine, i.e. red or white}
#' }
#' @source \url{https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/}
"wine2dine"

#' Data on beer consumption
#'
#' A data set on beer consumption; the data was obtained for a single
#'  household
#'
#' @format A data frame with 30 rows and 5 variables
#' \describe{
#'   \item{consumption}{litres of beer consumed}
#'   \item{price}{Price of beer ($)}
#'   \item{price_liquor}{price of other liquor ($)}
#'   \item{price_other}{price of other goods and services (an index)}
#'   \item{income}{income ($)}
#' }
#' @source  \url{http://www.principlesofeconometrics.com/poe4/poe4stata.htm}
"beer"

#' Data on economics journals subscription fees
#'
#' A data set on how much libraries need to pay for subscription plans of
#'  journals in the field of economics.
#'
#' @format A data frame with 327 rows and 10 variables
#' \describe{
#'   \item{title}{Title of the journal}
#'   \item{publisher}{The name of the publisher}
#'   \item{publisher_type}{Type of publisher: `profit` or `nonprofit`}
#'   \item{first_year}{First year in which journal was published in English language.}
#'   \item{sub_price}{Price to university libraries for print and online access in the United States in 2004. Measured in nominal dollars.}
#'   \item{pages_py}{Pages published in 2003}
#'   \item{impact}{Journal impact factor in 2002}
#'   \item{citations}{Total cites in 1999}
#'   \item{papers}{Papers published in 2002}
#' }
#' @source  \url{https://www.econ.ucsb.edu/~tedb/Journals/pricing.html}
"econjournals"

#' Artificial data on heights of EUF students in 2021
#'
#' A an artificial data set about the height of students from the Europa
#'  University Flensburg. The composition of the population was set according
#'  to official information about the student population in 2021, the heights
#'  were created artificially by drawing from a random distribution, which was
#'  calibrated for mean and standard deviation parameters of the German
#'  population.
#'
#' @format A data frame with 6402 rows and 2 variables
#' \describe{
#'   \item{Gender}{Gender of the person}
#'   \item{Height}{Height of the person}
#' }
#' @source \url{https://www.uni-flensburg.de/die-universitaet/profil-der-euf/zahlen-und-fakten?sword_list%5B0%5D=studierende&cHash=58017981a73d073af3f3633bf8d96803}
"EUFstudents"

#' Study semester of the EUF students in 2021
#'
#' A data set on the distribution of study semesters for all students of the
#'  Europa-University Flensburg in the spring semester 2021.
#'
#' @format A data frame with 5875 rows and 1 variable
#' \describe{
#'   \item{ID}{An ID for the student}
#'   \item{Semester}{The study semester of the student}
#' }
#' @source \url{https://www.uni-flensburg.de/die-universitaet/profil-der-euf/zahlen-und-fakten?sword_list%5B0%5D=studierende&cHash=58017981a73d073af3f3633bf8d96803}
"EUFstudentsemesters"
