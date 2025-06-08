## 1. Build objects and give them a class
obj1 <- list(id = 1, values = rnorm(3));  class(obj1) <- "myobj"
obj2 <- list(id = 2, values = rnorm(5));  class(obj2) <- "myobj"

print.myobj <- function(x, ...) {
  cat(sprintf("<myobj id=%d n=%d>", x$id, length(x$values)))
}

obj1

obj_list <- list(obj1, obj2)

dplyr::tibble(obj = obj_list)

data.frame(obj = obj_list) # wrong
df <- data.frame(obj = I(obj_list))

# I() is base-R’s “don’t touch this” flag.
# It’s documented in ?I: “Inhibit the interpretation of objects … when they are added to a data frame.”

df <- data.frame(obj = I(obj_list))

# print.data.frame()                # generic print method
# └─ format.data.frame()            # prepares the character matrix
#   └─ format()                     # generic, called on *each* column
#     └─ as.character()             # generic again
#       └─ as.character.default()   # dispatched for plain vectors

## 2. Tell R how to format that class

as.character.myobj <- function(x, ...) {
  "<myobj>"
}

as.character.myobj <- function(x, ...) {
  sprintf("<myobj n=%d>", length(x$values))
}


df



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

