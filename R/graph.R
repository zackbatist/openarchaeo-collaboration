#' Functions for extracting a graph from GitHub API data
#'
#' @param oarch Data frame containing data from the GitHub API
#' @param ... Passed to [dplyr::select()]
#'
#' @rdname gh_graph
#' @export
nodes_repos_users <- function(oarch) {
  oarch |>
    tidyr::pivot_longer(c(repo, user), names_to = "node_type", values_to = "node") |>
    dplyr::select(node, node_type) |>
    dplyr::distinct()
}

#' @rdname gh_graph
#' @export
nodes_repos <- function(oarch, ...) {
  oarch |>
    dplyr::select(repo, ...) |>
    dplyr::distinct()
}

#' @rdname gh_graph
#' @export
nodes_users <- function(oarch, ...) {
  oarch |>
    dplyr::select(user, ...) |>
    dplyr::distinct()
}

#' @rdname gh_graph
#' @export
edges_user_to_repo <- function(oarch) {
  oarch |>
    dplyr::rename(to = repo, from = user)
}

#' @rdname gh_graph
#' @export
edges_repo_to_user <- function(oarch) {
  oarch |>
    dplyr::rename(to = user, from = repo)
}

#' @rdname gh_graph
#' @export
edges_common_users <- function(oarch) {
  oarch |>
    dplyr::left_join(oarch, by = "user") |>
    dplyr::select(repo.x, user, repo.y) |>
    dplyr::filter(repo.x != repo.y) |>
    dplyr::mutate(repo.xy = purrr::map2_chr(repo.x, repo.y,
                                     ~paste0(sort(c(.x, .y)), collapse = ""))) |>
    dplyr::distinct(user, repo.xy, .keep_all = TRUE) |>
    dplyr::select(-repo.xy) |>
    dplyr::count(repo.x, repo.y) |>
    dplyr::rename(to = repo.x, from = repo.y)
}

#' @rdname gh_graph
#' @export
edges_common_repos <- function(oarch) {
  oarch |>
    dplyr::left_join(oarch, by = "repo") |>
    dplyr::select(user.x, repo, user.y) |>
    dplyr::filter(user.x != user.y) |>
    dplyr::mutate(user.xy = purrr::map2_chr(user.x, user.y,
                                     ~paste0(sort(c(.x, .y)), collapse = ""))) |>
    dplyr::distinct(repo, user.xy, .keep_all = TRUE) |>
    dplyr::select(-user.xy) |>
    dplyr::count(user.x, user.y) |>
    dplyr::rename(to = user.x, from = user.y)
}
