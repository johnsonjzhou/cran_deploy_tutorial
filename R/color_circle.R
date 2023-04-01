#' A Color Circle object that inherits from a BaseCircle object.
#'
#' @slot color The color of the object as a character string.
#' @include base_circle.R
setClass(
  Class = "ColorCircle",
  slots = list(
    color = "character"
  ),
  contains = c("BaseCircle")
)