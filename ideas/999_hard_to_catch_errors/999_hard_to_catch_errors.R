# real life error

library(car)

recode(1:10, "1:5=1; 10=NA")

my_recoder <- \(x) {
  recode(x, "1:5=1; 10=NA")
}

x <- 1:10
my_recoder(x)

# car::recode masked by dplyr::recode
library(dplyr)

my_recoder(x)


my_recoder <- \(x) {
  car::recode(x, "1:5=1; 10=NA")
}

my_recoder(x)
