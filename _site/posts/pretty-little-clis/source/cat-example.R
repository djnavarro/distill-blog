
# mimic relevant part of .Rmd state ---------------------------------------

cat("\n")


# code chunk --------------------------------------------------------------

wait <- function(seconds = 2) {Sys.sleep(seconds)}
simple_message <- function() {
  cat("Dead girls walking.")
  wait()
  cat(" --A.\n")
}
simple_message()
