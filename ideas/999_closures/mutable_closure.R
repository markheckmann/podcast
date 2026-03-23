# mutable closures

# simple closure
sampler <- \(mean) {
  \(n) {
    rnorm(n, mean = mean)
  }
}

r100 <- sampler(100)
r100(10)


# move function into list
s <- sampler2(100)
s$run(10)

sampler2 <- \(mean) {

  run <- \(n) {
    rnorm(n, mean = mean)
  }

  list(run = run)
}

s <- sampler2(100)
s$run(10)


# mutable mean
sampler3 <- \(mean) {

  run <- \(n) {
    rnorm(n, mean = mean)
  }

  set_mean <- \(mean) {
    mean <<- mean
  }

  list(run = run, set_mean = set_mean)
}


s <- sampler3(100)
s$run(10)
s$set_mean(0)
s$run(10)
