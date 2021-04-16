library(asciicast)

rec <- record(
  typing_speed = .00001,
  empty_wait = 0,
  start_wait = 0,
  end_wait = 3,
  script = here::here("_posts", "pretty-little-clis", "spinner-source.R"),
  echo = FALSE
)

write_svg(
  cast = rec,
  cursor = FALSE,
  path = here::here("_posts", "pretty-little-clis", "spinner-godot.svg"),
  rows = 4,
  window = TRUE
)
