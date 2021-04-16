
spinner <- cli::make_spinner(
  which = "dots2",
  template = "{spin} Waiting for Godot"
)

wait_for_godot <- function(spinner) {
  for(i in 1:100) {
    spinner$spin()
    Sys.sleep(.05)
  }
  spinner$finish()
}

cat("\n")
wait_for_godot(spinner)
cli::cli_alert_success("Waiting for Godot ... done!")
