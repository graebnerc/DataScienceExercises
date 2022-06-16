#' Compute the population variance of a vector
#'
#' Computes the population variance as defined by
#' \deqn{\sigma^2=\frac{1}{N}\sum_{i=1}^N(x_i-\mu)^2}
#' where \eqn{\mu} is the population mean (\eqn{\frac{1}{N}\sum_{i=1}^Nx_i})
#' and \eqn{N} is the size of the population
#'
#' @param x A numerical vector
#' @return The population variance of this vector
#' @examples
#' pop_var(c(2, 3, 4, 5))
#' pop_var(rnorm(20, 1, 0))
pop_var <- function(x){
  var(x) * ((length(x) - 1) / length(x))
}
