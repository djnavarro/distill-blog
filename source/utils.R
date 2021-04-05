
#' @export
set_meta <- function(title,
                          description,
                          url = "https://blog.djnavarro.net",
                          image = "https://djnavarro-blog.netlify.app/twitter-image.jpg",
                          image_alt = "Photo of Danielle with R hex stickers superimposed over her hair",
                          og_author = "Danielle Navarro",
                          twitter_creator = "@djnavarro"
) {
  box::use(magrittr[`%>%`])

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
  redirect <- paste0("/", from, " /", to)
  content <- brio::read_lines(here::here("_site", "_redirects"))
  if(!any(content == redirect)) {
    content <- c(content, redirect)
    brio::write_lines(content, here::here("_site", "_redirects"))
  }
}

#' @export
set_source <- function(slug) {

  github_url <- paste0(
    "https://github.com/djnavarro/distill-blog/tree/master/_posts/",
    slug, "/", slug, ".Rmd")
  source_md <- paste0("R markdown source on [GitHub](", github_url, ")")
  return(source_md)

}


#' @export
set_lockfile <- function(slug) {

  project <- here::here("_posts", slug)
  renv::snapshot(project)

}
