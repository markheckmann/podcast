r <- 1
(r <- 1)

c(r <- 42, 100 ) # rarely used


a <- {
  1
  2
  3
}

a <- {
  1
  2
  g <- 10
}

a <- '{'(1, 2, g <- 10)

# prefix form
"<-"("a", 11)
a
# Parentheses tell R: “whatever this expression returns, print it.”
(a <- 42)
print(r <- 42)     # ordinary printing


withVisible(r <- 42)



