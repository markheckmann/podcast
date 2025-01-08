# Function Factories


# Basics ----------------------------------------------------


# Pitfalls ----------------------------------------------------

## See README.md in https://github.com/jonthegeek/factory

power1 <- \(exponent) {
  \(x) {
    x^exponent
  }
}


square <- power1(2)
square(3)
square(4)

exp <- 2
square <- power1(exp)


exp <- 3  # due to R's lazy evaluation
square(2)


power2 <- \(exponent) {
  # exponent  # => forces evaluation
  force(exponent)
  \(x) {
    x^exponent
  }
}

exp <- 2
square2 <- power2(exp)
exp <- 3  # due to R's lazy evaluation
square2(2)


# rlang & factory ----------------------------------------------------








