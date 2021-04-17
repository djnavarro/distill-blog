suppressPackageStartupMessages(library(cli))
pll <- function() {
  cat("\n")
  dramatic_pause <- function(seconds = 2) {Sys.sleep(seconds)}
  status_bar <- cli_status(msg = "You found my bracelet."); dramatic_pause();
  cli_status_update(id = status_bar, msg = "Now come find me."); dramatic_pause();
  cli_status_update(id = status_bar, msg = "Good luck bitches."); dramatic_pause();
  cli_status_update(id = status_bar, msg = "-A"); dramatic_pause()
  cli_status_clear(id = status_bar)
}
pll()
