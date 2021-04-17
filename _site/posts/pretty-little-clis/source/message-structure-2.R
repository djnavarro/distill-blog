
# mimic relevant part of .Rmd state ---------------------------------------

suppressPackageStartupMessages(library(cli))
wait <- function(seconds = 2) {Sys.sleep(seconds)}

# code chunk --------------------------------------------------------------

threatening_text <- function() {
  cli({
    cli_alert_warning("The truth won't set you free, bitches.")
    cli_alert_warning("I'm going to bury you with it.")
    cli_alert_warning("Kisses")
    cli_alert_warning("-A")
  })
}
threatening_text()
