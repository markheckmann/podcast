#
library(dplyr)

df <- data.frame(a = 1:2)
df |> mutate(
    sum_1 = sum(a, na.tm = T),  # na.tm instead of na.rm
    sum_2 = sum(a, na.rm = T)
  )


sum(1,2,3, a = T, b = F)
sum(1,2,3, na.rn = 1)
