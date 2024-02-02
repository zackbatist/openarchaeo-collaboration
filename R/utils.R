#' Count number of rows in a filtered data frame
#'
#' @param .data Data frame
#' @param ... Filters passed to [dplyr::filter()]
#'
#' @export
n_filter <- function(.data, ...) {
  nrow(dplyr::filter(.data, ...))
}

#' Mimic hugo's slugification algorithm
#'
#' @param x Character vector to slugify
#'
#' @export
slugify <- function(x) {
  x |>
    tolower() |>
    stringr::str_remove_all(",") |>
    stringr::str_replace_all("\\W", "-")
}
