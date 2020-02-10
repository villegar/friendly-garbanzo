#' @title Dependency Example
#'
#' @param x A numeric data series
#'
#' @description This is an exmple to show the use of dependencies
#'
#'
#' @examples
#' df <- MASS::Boston
#' age <- df$age
#' example_dependency(age)
#'
#'
#'
#' @export
example_dependency <- function(x){
  ggplot2::qplot(x, geom = "histogram", binwidth = 10)
}
