create_templated_post <- function(slug) {

  # relevant folders
  proj_dir <- rprojroot::find_root(".blogroot")
  post_dir <- fs::path(proj_dir, "_posts", slug)

  # files
  post_template <- fs::path(proj_dir, "source", "template", "template.Rmd")
  post_file <- fs::path(post_dir, "index.Rmd")

  # create post folder
  fs::dir_create(post_dir)

  # write the template, replacing the slug
  lines <- brio::read_lines(post_template)
  lines <- stringr::str_replace_all(lines, "template-slug", slug)
  brio::write_lines(lines, post_file)

  # create sentinel file for the post root (not strictly needed but still)
  fs::file_create(fs::path(post_dir, ".postroot"))

  # adds helper functions used in every post
  fs::file_copy(
    fs::path(proj_dir, "source", "helpers.R"),
    fs::path(post_dir, "helpers.R")
  )

  # initialise an R environment for the post
  renv::init(project = post_dir)
}
