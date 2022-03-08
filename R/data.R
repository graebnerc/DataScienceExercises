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
