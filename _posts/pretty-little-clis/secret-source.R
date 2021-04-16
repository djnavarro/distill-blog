
pll <- function() {
  cli::cli_h1("Secret, by The Pierces")

  s <- 1
  Sys.sleep(s); cli::cli_alert("Got a secret, can you keep it?")
  Sys.sleep(s); cli::cli_alert("Swear this one you'll save")
  Sys.sleep(s); cli::cli_alert("Better lock it, in your pocket")
  Sys.sleep(s); cli::cli_alert("Taking this one to the grave")
  Sys.sleep(s); cli::cli_alert("If I show you then I know you, won't tell what I said")
  Sys.sleep(s); cli::cli_alert("Cause two can keep a secret if one of them is dead")
}

pll()
