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
#'   \item{q}{litres of beer consumed}
#'   \item{pb}{Price of beer ($)}
#'   \item{pl}{price of other liquor ($)}
#'   \item{pr}{price of remaining goods and services (an index)}
#'   \item{i}{income ($)}
#'}
#' @source  \url{http://www.principlesofeconometrics.com/poe4/poe4stata.htm}
"beer"
