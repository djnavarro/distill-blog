rmarkdown::render_site()
fs::file_copy(
  path = here::here("_redirects"),
  new_path = here::here("_site", "_redirects"),
  overwrite = TRUE
)
