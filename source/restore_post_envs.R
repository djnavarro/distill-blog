root <- rprojroot::find_root("_site.yml")
posts <- list.files(file.path(root, "_posts"))

hydrate <- function(post) {
  refinery::renv_snapshot(post)
  refinery::renv_restore(post)
}
