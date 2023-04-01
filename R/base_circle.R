#' A Base Circle object.
#'
#' @slot r The radius as a number.
#' @slot d The diameter as a number.
#' @slot name The name of the object as a character string.
#'
setClass(
  Class = "BaseCircle",
  slots = list(
    r = "numeric",
    d = "numeric",
    name = "character"
  )
)

# S4 methods -------------------------------------------------------------------

#' @exportMethod
setMethod(
  f = "print",
  signature = "BaseCircle",
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

#' @exportMethod
#' @include generics.R
setMethod(
  f = "set_diameter",
  signature = "BaseCircle",
  definition = function(shape) {
    shape@d <- with(shape, shape@r * 2)
    return(shape)
  }
)

#' @exportMethod
#' @include generics.R
setMethod(
  f = "perimeter",
  signature = "BaseCircle",
  definition = function(shape) {
    p <- with(shape, {
      2 * pi * shape@r
    })
    return(p)
  }
)

#' @exportMethod
#' @include generics.R
setMethod(
  f = "area",
  signature = "BaseCircle",
  definition = function(shape) {
    a <- with(shape, {
      pi * shape@r^2
    })
    return(a)
  }
)