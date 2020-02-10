#' @title Straight Line Measures
#'
#' @param a Parameter \eqn{a}
#' @param b Parameter \eqn{b}
#' @param c Parameter \eqn{c}
#'
#' @description The function calculates slope, x intercept, y intercept
#' and angle with x axis of a straight line
#'
#' @details If a straight line is given by \eqn{ax+by+c=0}
#' then slope, x intercept, y intercept and the angle made
#' by the line with x axis are given by \eqn{-a/b}, \eqn{-c/a},
#' \eqn{-c/b} and \eqn{arctan(slope)}
#'
#' @return A list of class \code{"stline"}, with all the input parameters
#' and measures described in details.
#'
#' @author Jon Smith
#'
#' @seealso \code{\link{hello}}
#'
#' @references \url{https://github.com/riazakhan94/straightline}
#'
#' @source \url{https://github.com/riazakhan94/straightline}
#'
#' @export
#'
#' @examples
#' line <- straighten(-4,4,30)
#' class(line)
#' message("The slope of the line is ", line$slope)
#'
#'
straighten <- function(a, b, c){
  if(a==0 & b==0){
    # error message
    stop("a and b both cannot be zero")
  }
  # calculations
  slope <- - a / b
  x_intercept <- - c / a
  y_intercept <- - c / b
  angle_x <- atan(slope) * (180 / pi)
  # outputs in a list
  value <- as.list(c(a = a, b = b, c = c,
                     slope = slope,
                     x_intercept = x_intercept,
                     y_intercept = y_intercept,
                     angle_x = angle_x))
  # output class
  class(value) <- "stline"
  # return output
  return(value)
}
