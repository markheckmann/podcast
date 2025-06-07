# The value of the last evaluated expression is what a function returns if you don’t call return().

f <- function() {
  b <- 30   # last evaluated expression
}

g <- function() {
  b <- 30
  b
}

f()
g()

r_f <- f() # still has return value
r_g <- g()

r_f
r_g


g <- function() {
  b <- 30
  invisible(b) # no autoprint
}
