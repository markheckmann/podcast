# feature similar to Pythons pathlib => path / path

path <- \(...){
  p <- file.path(...)
  class(p) <- "path"
  p
}

path_wd <- \(...) {
  fs::path_wd(...) |> path()
}

print.path <- \(x, ...) {
  cli::cli_h3("<path>")
  print.default(unclass(x))
}

"/.path" <- function(e1, e2) {
  p <- file.path(e1, e2)
  class(p) <- "path"
  p
}


"+.path" <- function(e1, e2) {
  p <- paste0(e1, e2)
  class(p) <- "path"
  p
}


p <- path("dev", "all")

p <- path_wd("dev") / "test" + ".txt"
p

