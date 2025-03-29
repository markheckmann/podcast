
feat: vectorize `index` arg in remove_slide()

I tried to delete several slides at once from
a presentation and noticed that the `index` arg
in `remove_slide()` is not vectorized.

I suggest to make the `index` arg vectorized.
@davidgohel, If you agree with the suggestion,
please feel free to assign the issue to me :)



library(officer)

x <- read_pptx() |>
  add_slide() |>
  add_slide() |>
  add_slide()
x <- remove_slide(x, 1) # works
x <- remove_slide(x, 1:2) # fails => would be nice if it was possible
#> Error in if (!between(index, 1, l_)) {: the condition has length > 1
