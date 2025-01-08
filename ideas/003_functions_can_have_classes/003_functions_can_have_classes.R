library(cli)

paste()
paste

col_grey("hello")
col_grey

is.function(paste)
is.function(col_grey)

class(paste)
class(col_grey)

cli:::print.cli_ansi_style

df <- sloop::s3_methods_generic("print")
stringr::str_subset(df$class, "cli")

foo <- \(x) x
foo(1)
attributes(foo)
class(foo) <- "foo"

print.foo <- \(x, ...) {
  cat("foo printer")
}
foo(1)
foo
