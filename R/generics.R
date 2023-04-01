#' Perimeter of a circle
#'
#' @description
#' This is a generic function.
#' `perimeter` calculates and prints the perimeter of a circle.
#'
#' @param shape The shape as a BaseCircle class object.
#' @return `NULL`
#' @export
perimeter <- function(shape) {
  return(
    UseMethod("perimeter")
  )
}

#' Area of a circle
#'
#' @description
#' This is a generic function.
#' `area` calculates and prints the area of a circle.
#'
#' @param shape The shape as a BaseCircle class object.
#' @return `NULL`
#' @export
area <- function(shape) {
  return(
    UseMethod("area")
  )
}

#' Sets the diameter of the circle.
#'
#' @description
#' This is a generic function.
#' `set_diameter` sets the diameter of the BaseCircle object
#' by populating the `d` slot.
#'
#' @param shape The shape as a BaseCircle class object.
#' @return NULL
#' @export
set_diameter <- function(shape) {
  return(
    UseMethod("set_diameter")
  )
}