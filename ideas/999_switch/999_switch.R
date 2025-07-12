cond <- "a"
res <- switch(cond,
  a = "it's a",
  b = "it's b",
  c = "it's c",
  "default"
)
res

# the epxression can be a block of code
cond <- "a"
res <- switch(cond,
  a = {
    # this can be a complex peice of code here
    cond == "a"
    "return a"
  },
  b = "it's b",
  c = "it's c",
  "default"
)
res
