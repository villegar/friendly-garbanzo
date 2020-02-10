# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


#' @title Hello, Garbanzo!
#' @description Your friendly garbanzo will say hi to you
#' @examples
#' hello()
#'
#' @export
hello <- function() {
  print("Hello, I'm your friendly garbanzo!")
}
