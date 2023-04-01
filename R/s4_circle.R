# Simple implementation of a S4 class with constructor, generics, methods and
# inheritance

#' Simple program to perform circle calculations
setClass(
  Class = "circle",
  slots = list(
    r = "numeric",
    d = "numeric",
    name = "character"
  )
)

# Generics

#' perimeter
#'
#' Calculates and prints perimeter of a circle
#'
#' @param shape The shape as a circle class object.
#' @return NULL
#'
perimeter <- function(shape) {
  return(
    UseMethod("perimeter")
  )
}

#' area
#'
#' Calculates and prints the area of a circle
#'
#' @param shape The shape as a circle class object.
#' @return NULL
#'
area <- function(shape) {
  return(
    UseMethod("area")
  )
}

#' set_diameter
#'
#' Sets the diameter of the circle object by populating the `d` slot.
#'
#' @param shape The shape as a circle class object.
#' @return NULL
#'
set_diameter <- function(shape) {
  return(
    UseMethod("set_diameter")
  )
}

# Methods
setMethod(
  f = "print",
  signature = "circle",
  definition = function(x, ...) {
    with(x, {
      for (name in slotNames(x)) {
        slot_value <- slot(x, name)
        cat(
          paste(c(name, "="), sep = " "),
          ifelse(
            test = length(slot_value) == 0,
            yes = "Undeclared",
            no = slot_value
          ),
          "\n"
        )
      }
    })
  }
)

setMethod(
  f = "set_diameter",
  signature = "circle",
  definition = function(shape) {
    shape@d <- with(shape, x@r * 2)
    return(shape)
  }
)

setMethod(
  f = "perimeter",
  signature = "circle",
  definition = function(shape) {
    p <- with(shape, {
      2 * pi * shape@r
    })
    return(p)
  }
)

setMethod(
  f = "area",
  signature = "circle",
  definition = function(shape) {
    a <- with(shape, {
      pi * shape@r^2
    })
    return(a)
  }
)

#' Inheritance
setClass(
  Class = "color_circle",
  slots = list(
    color = "character"
  ),
  contains = c("circle")
)

# Usage
# x <- new("circle", r = 5)
# print(x)

# x <- set_diameter(x)
# print(x)

# cat("Perimeter", perimeter(x), "\n")

# cat("Area", area(x), "\n")

# y <- new("color_circle", r = 5, color = "green")
# print(y)