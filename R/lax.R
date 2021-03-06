#' Be lax in an otherwise strict environment
#'
#' This temporarily removes the shims added by strict so that you can
#' execute code that would otherwise not be allowed
#'
#' @param code Code to execute.
#' @export
#' @examples
#' lax({
#'   mtcars[, 1]
#'
#'   sapply(1:10, runif)
#' })
lax <- function(code) {
  strict_deactivate()
  on.exit(strict_activate())

  code
}
