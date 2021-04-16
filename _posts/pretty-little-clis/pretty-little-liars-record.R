library(asciicast)


rec <- record(
  typing_speed = .001,
  empty_wait = 0,
  start_wait = 0,
  end_wait = 4,
  idle_time_limit = 10,
  timeout = 1000,
  script = here::here("_posts", "pretty-little-clis", "pretty-little-liars.R"),
  echo = FALSE
)


write_svg(
  cast = rec,
  cursor = FALSE,
  path = here::here("_posts", "pretty-little-clis", "pretty-little-liars.svg"),
  rows = 10,
  cols = 80,
  window = TRUE,
  start_at = 0,
  end_at = 100,
  omit_last_line = FALSE
)
