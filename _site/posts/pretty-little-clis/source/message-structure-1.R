
# mimic relevant part of .Rmd state ---------------------------------------

suppressPackageStartupMessages(library(cli))
wait <- function(seconds = 2) {Sys.sleep(seconds)}

# code chunk --------------------------------------------------------------

title_theme <- function() {
  cli_h1("Secret, by The Pierces")
  cli_text("Got a secret, can you keep it?")
  cli_text("Swear this one you'll save")
  cli_text("Better lock it in your pocket")
  cli_text("Taking this one to the grave")
  cli_text("If I show you then I know you won't tell what I said")
  cli_text("Cause two can keep a secret if one of them is dead")
}
title_theme()
