# 1. Creating a github issue
#
# - What is officer?
# - Feature suggestion
# - Create github issue

library(officer)

x <- read_pptx("4_slides.pptx")
x <- remove_slide(x, index = 1)
x <- remove_slide(x, index = 1:2)
