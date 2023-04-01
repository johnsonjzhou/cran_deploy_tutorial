#' Perimeter of a circle
#'
#' @description
#' This is a generic function.
#' `perimeter` calculates and prints the perimeter of a circle.
#'
#' @param shape The shape as a BaseCircle class object.
#' @return `NULL`
#' @export
setGeneric(name = "perimeter", def = function(shape) {
  standardGeneric("perimeter")
})

#' Area of a circle
#'
#' @description
#' This is a generic function.
#' `area` calculates and prints the area of a circle.
#'
#' @param shape The shape as a BaseCircle class object.
#' @return `NULL`
#' @export
setGeneric(name = "area", def = function(shape) {
  standardGeneric("area")
})

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
setGeneric(name = "set_diameter", def = function(shape) {
  standardGeneric("set_diameter")
})