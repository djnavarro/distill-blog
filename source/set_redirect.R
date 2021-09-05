
set_redirect <- function(from, to = paste0("posts/", from)) {
  blogroot <- rprojroot::find_root(".blogroot")
  redirect_file <- fs::path(blogroot, "_redirects")
  redirect <- paste0("/", from, " /", to)
  content <- brio::read_lines(redirect_file)
  if(!any(content == redirect)) {
    content <- c(content, redirect)
    brio::write_lines(content, redirect_file)
    fs::file_copy(
      path = redirect_file,
      new_path = redirect_file,
      overwrite = TRUE
    )
  }
}
