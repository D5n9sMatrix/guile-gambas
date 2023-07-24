#!/usr/bin/r

f_eval(~ 1 + 2 + 3)

# formulas automatically capture their enclosing environment
foo <- function(x) {
  y <- 10 # nolint
  ~ x + y
}
f <- foo(1)
f
f_eval(f)

# If you supply data, f_eval will look their first:
f_eval(~ cyl, mtcars)

# To avoid ambiguity, you can use .env and .data pronouns to be
# explicit:
cyl <- 10
f_eval(~ .data$cyl, mtcars)
f_eval(~ .env$cyl, mtcars)

# Imagine you are computing the mean of a variable:
f_eval(~ mean(cyl), mtcars)
# How can you change the variable that's being computed?
# The easiest way is "unquote" with uq()
# See ?f_interp for more details
var <- ~ cyl
f_eval(~ mean( uq(var) ), mtcars) # nolint
