#' @export
nodes_repos_users <- function(oarch_graph) {
  oarch_graph |>
    pivot_longer(c(repo, user), names_to = "node_type", values_to = "node") |>
    select(node, node_type) |>
    distinct()
}

#' @export
nodes_repos <- function(oarch_graph, ...) {
  oarch_graph |>
    select(repo, ...) |>
    distinct()
}

#' @export
nodes_users <- function(oarch_graph, ...) {
  oarch_graph |>
    select(user, ...) |>
    distinct()
}

#' @export
edges_user_to_repo <- function(oarch_graph) {
  oarch_graph |>
    rename(to = repo, from = user)
}

#' @export
edges_repo_to_user <- function(oarch_graph) {
  oarch_graph |>
    rename(to = user, from = repo)
}

#' @export
edges_common_users <- function(oarch_graph) {
  oarch_graph |>
    left_join(oarch_graph, by = "user") |>
    select(repo.x, user, repo.y) |>
    filter(repo.x != repo.y) |>
    mutate(repo.xy = map2_chr(repo.x, repo.y,
                              ~paste0(sort(c(.x, .y)), collapse = ""))) |>
    distinct(user, repo.xy, .keep_all = TRUE) |>
    select(-repo.xy) |>
    count(repo.x, repo.y) |>
    rename(to = repo.x, from = repo.y)
}

#' @export
edges_common_repos <- function(oarch_graph) {
  oarch_graph |>
    left_join(oarch_graph, by = "repo") |>
    select(user.x, repo, user.y) |>
    filter(user.x != user.y) |>
    mutate(user.xy = map2_chr(user.x, user.y,
                              ~paste0(sort(c(.x, .y)), collapse = ""))) |>
    distinct(repo, user.xy, .keep_all = TRUE) |>
    select(-user.xy) |>
    count(user.x, user.y) |>
    rename(to = user.x, from = user.y)
}
