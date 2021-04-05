
#' @export
set_meta_tags <- function(title,
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
