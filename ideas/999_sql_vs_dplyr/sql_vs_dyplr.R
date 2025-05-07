library(sqldf)
library(dplyr)

df <- tribble(
  ~a, ~b, ~c,
  1, "A", "1-one",
  2, "B", "2-two",
  3, "C", "3-three",
  4, "D", "1-one",
  5, "E", "2-two",
  6, "F", "3-three",
  7, "G", "1-one",
  8, "H", "4-four"
)


# https://www.sqlite.org/windowfunctions.html

q <- "
select *,
group_concat(b, '') over() as g1,
group_concat(b, '') over(partition by c) as g2,
group_concat(b, '') over(partition by c order by a) as g3,
group_concat(b, '') over(partition by c order by a rows unbounded preceding) as g4,
-- group
group_concat(b, '') over(order by c groups between 1 preceding and 1 following) as g5
from df
order by c
"
sqldf(q)
