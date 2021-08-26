
#' @export
set_meta <- function(title,
                          description,
                          url = "https://blog.djnavarro.net",
                          image = "https://blog.djnavarro.net/image/twitter-image.jpg",
                          image_alt = "Photo of Danielle with R hex stickers superimposed over her hair",
                          og_author = "Danielle Navarro",
                          twitter_creator = "@djnavarro"
) {
  box::use(magrittr[`%>%`])
  box::use(usethis)

  metathis::meta() %>%
    metathis::meta_general(description = description) %>%
    metathis::meta_name("github-repo" = "djnavarro/distill-blog") %>%
    metathis::meta_social(
      title = title,
      url = url,
      image = image,
      image_alt = image_alt,
      og_type = "website",
      og_author = og_author,
      twitter_card_type = "summary",
      twitter_creator = twitter_creator
    )

}

#' @export
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

#' @export
set_source <- function(slug) {
  github_url <- paste0(
    "https://github.com/djnavarro/distill-blog/tree/master/_posts/",
    slug, "/", slug, ".Rmd")
  return(github_url)
}

#' @export
set_timestamp <- function(tzone = "Australia/Sydney") {
  time <- lubridate::now(tzone = tzone)
  stamp <- as.character(time, tz = tzone, usetz = TRUE)
  return(stamp)
}

#' @export
set_session <- function(slug) {
  blogroot <- rprojroot::find_root(".blogroot")
  project <- fs::path(blogroot, "_posts", slug)
  brio::write_lines(
    text = utils::capture.output(utils::sessionInfo()),
    path = file.path(project, "sessioninfo.txt")
  )
  github_url <- paste0(
    "https://github.com/djnavarro/distill-blog/tree/master/_posts/",
    slug, "/sessioninfo.txt")
  return(github_url)
}


#' @export
set_lockfile <- function(slug) {
  blogroot <- rprojroot::find_root(".blogroot")
  project <- fs::path(blogroot, "_posts", slug)
  tmp <- utils::capture.output(renv::snapshot(project, prompt = FALSE))
  github_url <- paste0(
    "https://github.com/djnavarro/distill-blog/tree/master/_posts/",
    slug, "/renv.lock")
  return(github_url)
}
