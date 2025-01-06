# source, attach + box package

## basic idea

source_to_env <- \(path, env) {
  # withr::with_environment(env, {
    source(path, encoding = "utf8", local = env)   # Definition der Grafiken
  # })  
}


e <- new.env()
source_to_env("R/3_blocks.R", e)
attach(e, name = "sourced:blocks")


