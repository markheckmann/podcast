## 1. Build objects and give them a class
obj1 <- list(id = 1, values = rnorm(3));  class(obj1) <- "myobj"
obj2 <- list(id = 2, values = rnorm(5));  class(obj2) <- "myobj"

# obj1 <- structure(list(id = 1, values = rnorm(3)), class = "myobj")
# obj2 <- structure(list(id = 2, values = rnorm(5)), class = "myobj")

print.myobj <- function(x, ...) {
  cat(sprintf("<myobj id=%d n=%d>", x$id, length(x$values)))
}


obj_list <- list(obj1, obj2)

dplyr::tibble(obj = obj_list)

data.frame(obj = obj_list) # wrong
df <- data.frame(obj = I(obj_list))

# I() is base-R’s “don’t touch this” flag.
# It’s documented in ?I: “Inhibit the interpretation of objects … when they are added to a data frame.”


# print.data.frame()                # generic print method
# └─ format.data.frame()            # prepares the character matrix
#   └─ format()                     # generic, called on *each* column
#     └─ as.character()             # generic again
#       └─ as.character.default()   # dispatched for plain vectors

## 2. Tell R how to format that class
#
# format.myobj <- function(x, ...) {
#   "<myobj>"
# }


as.character.myobj <- function(x, ...) {
  "<myobj>"
}

as.character.myobj <- function(x, ...) {
  sprintf("<myobj n=%d>", length(x$values))
}


df

# In R, why is the myobj class shown as <myobj> when printing teh datafrae to the console when filling the column c1 using I()
# but not in the second case of column c2?
#
# obj1 <- list(id = 1, values = rnorm(3));  class(obj1) <- "myobj"
# obj2 <- list(id = 2, values = rnorm(5));  class(obj2) <- "myobj"
#
# as.character.myobj <- function(x, ...) {
#   "<myobj>"
# }
#
# format.myobj <- function(x, ...) {
#   "<myobj>"
# }
#
# df <- data.frame(c1 = I(list(obj1, obj2)))
# df$c2[[1]] <- obj1
# df$c2[[2]] <- obj2
#
# > df
# c1                                                                 c2
# 1 <myobj>                      1.0000000, -0.4300856, -0.7257838, -1.0881960
# 2 <myobj> 2.0000000, -0.2314206, 1.6548302, -0.6265613, 0.8086079, 1.9430104


# # see that as.character.default gets called
# getNamespace("base")
# e <- getNamespace("base")
# e$as.character.default
# bindingIsLocked("as.character.default", getNamespace("base"))
#
# # e$as.character.default <- \(){}
#
# as_character <- function (x, ...) {
#   cat("called as.character.default \n")
#   .Internal(as.vector(x, "character"))
# }
#
# unlockBinding("as.character.default", env = e)            # unlock
# assign("as.character.default", as_character, envir = e)   # replace
# lockBinding("as.character.default", e)                    # relock
#
# as.character(obj1)



format_df <- function (x, ...) {
  cat("called format.data.frame \n")
  .Internal(as.vector(x, "character"))
}

unlockBinding("as.character.default", env = e)            # unlock
assign("as.character.default", as_character, envir = e)   # replace
lockBinding("as.character.default", e)                    # relock

as.character(obj1)

format.data.frame
