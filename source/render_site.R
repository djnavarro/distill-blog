root <- rprojroot::find_root("_site.yml")
rmarkdown::render_site()
fs::file_copy(
  path = fs::path(root, "_redirects"),
  new_path = fs::path(root, "_site", "_redirects"),
  overwrite = TRUE
)
