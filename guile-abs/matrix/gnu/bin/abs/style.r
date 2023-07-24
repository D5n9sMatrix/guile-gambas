#!/usr/bin/r

months <- month.name[1:3]
cli_text("{.val {months}}")

nums <- 1:5 / 7
cli_text("{.val {nums}}")


nums <- 1:5 / 7
divid <- cli_div(theme = list(.val = list(digits = 3)))
cli_text("{.val {nums}}")
cli_end(divid)


cli_format.month <- function(x, style = NULL, ...) { # nolint
  x <- encodeString(substr(x, 1, 3), quote = "\"")
  NextMethod("cli_format")
}
registerS3method("cli_format", "month", cli_format.month)
months <- structure(month.name[1:3], class = "month")
cli_text("{.val {months}}")
