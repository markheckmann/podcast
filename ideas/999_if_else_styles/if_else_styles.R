# https://chatgpt.com/share/686a56b5-a278-800c-8ec6-a5da1618da05

# https://style.tidyverse.org/syntax.html#if-statements
case <- "b"

if (case == "a") {
  res <- 1
} else if (case == "b") {
  res <- 2
} else {
  res <- 3
}

res <- if (case == "a") {
  1
} else if (case == "b") {
  2
} else {
  3
}

res <- if (case == "a") 1 else if (case == "b") 2 else 3

