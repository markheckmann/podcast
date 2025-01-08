library(cli)

cat("hello")
cat

col_grey("hello")
col_grey

is.function(cat)
is.function(col_grey)

class(cat)
class(col_grey)

cli:::print.cli_ansi_style # x is the fucntion
# NOTE: col_grey = print(col_grey)

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

# how to print it then?
print.default(col_grey)
print.function(col_grey)

# when is this useful?


