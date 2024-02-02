#' Count number of rows in a filtered data frame
#'
#' @param .data Data frame
#' @param ... Filters passed to [dplyr::filter()]
#'
#' @export
n_filter <- function(.data, ...) {
  nrow(dplyr::filter(.data, ...))
}
