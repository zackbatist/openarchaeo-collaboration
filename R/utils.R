#' @export
#' @noRd
n_filter <- function(.data, ...) {
  nrow(dplyr::filter(.data, ...))
}
