#' @importFrom roxygen2 roclet
#' @export
roclet_trace <- function() {
  roclet("trace")
}

#' @importFrom roxygen2 roclet_output
#' @export
roclet_output.roclet_trace <- function(x, results, base_path, ...) {
  dots <- list(...)
  message("roclet_output(", class(x), ", ", class(results), ", ", class(base_path), ", {", length(dots), "})")
}

#' @importFrom roxygen2 roclet_tags
#' @export
roclet_tags.roclet_trace <- function(x) {
  message("roclet_tags(", class(x), ")")
}

#' @importFrom roxygen2 roclet_process
#' @export
roclet_process.roclet_trace <- function(x, parsed, base_path, global_options = list()) {
  message("roclet_process(", class(x), ", ", class(parsed), ", ", class(base_path), ", ", class(global_options), ")")
}

#' @importFrom roxygen2 roclet_clean
#' @export
roclet_clean <- function(x, base_path) {
  message("roclet_clean(", class(x), ", ", class(base_path), ")")
}
