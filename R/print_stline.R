#' @title Print \code{"stline"} Object
#'
#' @param x An object of class \code{"stline"}
#'
#' @param ... NULL; supplied for S3 method consistency
#'
#' @examples
#' line <- straighten(1, 0, 5)
#' print(line)
#'
#' line2 <- straighten(7, -5, 0)
#' print(line2)
#'
#' @method print stline
#'
#' @export
print.stline <- function(x, ... = NULL){
  char_a <- paste0("(", as.character(round(x$a, 3)), ")", "*x")
  char_b <- paste0("(", as.character(round(x$b, 3)), ")", "*y")
  char_c <- paste0("(", as.character(round(x$c, 3)), ")")
  Equation <- paste(char_a, "+", char_b, "+", char_c, "= 0")
  message("Straight Line Equation      : ", Equation)
  message("Slope                       : ", x$slope)
  message("x intercept                 : ", x$x_intercept)
  message("y intercept                 : ", x$y_intercept)
  message("Angle with x axis (degrees) : ", x$angle_x)
  if(x$a == 0){
    message("Line parallel to x axis")
  }
  if(x$b == 0){
    message("Line parallel to y axis")
  }
  if(x$c == 0){
    message("Line passes through origin")
  }
}
