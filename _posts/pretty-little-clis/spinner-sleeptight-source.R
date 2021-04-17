
spinner <- cli::make_spinner(
  which = "dots2",
  template = "{spin} It's not over until I say it is."
)

wait_for_reveal <- function(spinner) {
  for(i in 1:100) {
    spinner$spin()
    Sys.sleep(.05)
  }
  spinner$finish()
}

cat("\n")
wait_for_reveal(spinner)
cli::cli_alert_success("Sleep tight while you still can, bitches. -A")
