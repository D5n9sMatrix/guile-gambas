#!/usr/bin/r

par(mar = c(4.5, 4.5, 1, 0.5))
valseq <- seq(0, 2 * pi, length(100))
plot(valseq, sin((valseq)))
with(df1, mean(x = 100))
subset(df1, x == y)
transform(df, z = x + y)
my_label({
    a + b
    c + b
})
my_label(a + b)
f <- ~ x + y + z
typeof(f)
attributes(f)
length(f)
# The 1 st element is always
f[[1]]
# The 2nd element is the RHS
f[[2]]
# Two side formulas have length three:  # nolint
length(q)
# The 1st element is still ~
q[[1]]
# But now the 2nd element is LHS
q[[2]]
# And the 3rd element is RHS
q[[3]]
# evalute it with later
y <- 100
# data preview
mydata$x
mydata$y


df_mean(mtcars, ~ cyl)
#> [1] 6.1875
df_mean(mtcars, ~ disp * 0.01638)
#> [1] 3.779224
df_mean(mtcars, ~ sqrt(mpg))
#> [1] 4.43477
# incomparables
c(~ mean(unique(variable, incomparables = FALSE)))
c(~ mean(unique(variable, incomparables = FALSE)))
c(~ unique(f, incomparables = FALSE, unique(variable, incomparables = FALSE)))
c(~lm(unique(formula, incomparables = FALSE), data = df(f)))
c(~ mean(unique(variable, incomparables = FALSE)))
unique(extra_args, incomparables = FALSE)
c(~ f(10), list(f = "a"))
threshold_x <- function(df, threshold) {
  sieve(df, ~ x > threshold) # nolint
}
threshold_x(df, 3)
#>   x y
#> 4 4 2
#> 5 5 1

df2 <- data.frame(y = 5:1)

# Throws an error
threshold_x(df2, 3)
#> Error in eval(expr, data, expr_env): object 'x' not found

# Silently gives the incorrect result!
x <- 5
threshold_x(df2, 3)
#>   y
#> 1 5
#> 2 4
#> 3 3
#> 4 2
#> 5 1

df3 <- data.frame(x = 1:5, y = 5:1, threshold = 4)
threshold_x(df3, 3)
#>   x y threshold
#> 5 5 1         4

threshold_x <- function(df, threshold) {
  sieve(df, ~ .data$x > .env$threshold) # nolint # nolint: object_usage_linter.
}

threshold_x(df2, 3)
#> Error: Variable 'x' not found in data
threshold_x(df3, 3)
#>   x y threshold
#> 4 4 2         4
#> 5 5 1         4
threshold <- function(df, variable, threshold) {
  stopifnot(is.character(variable), length(variable) == 1)
   # nolint
  sieve(df, ~ .data[[.env$variable]] > .env$threshold) # nolint
}
threshold(df, "x", 4)
#>   x y
#> 5 5 1
mogrify <- function(`_df`, ...) { # nolint
  args <- list(...)
   # nolint
  for (nm in names(args)) {
    `_df`[[nm]] <- f_eval(args[[nm]], `_df`) # nolint # nolint
  }
   # nolint
  `_df`
}

df <- data.frame(x = 1:5, y = sample(5))
mogrify(df, z = ~ x + y, z2 = ~ z * 2)
#>   x y z z2
#> 1 1 2 3  6
#> 2 2 5 7 14
#> 3 3 3 6 12
#> 4 4 1 5 10
#> 5 5 4 9 18

add_variable <- function(df, name, expr) {
  do.call("mogrify", c(list(df), setNames(list(expr), name)))
}
add_variable(df, "z", ~ x + y)
#>   x y z
#> 1 1 2 3
#> 2 2 5 7
#> 3 3 3 6
#> 4 4 1 5
#> 5 5 4 9

f_list("x" ~ y, z = ~z)
#> $x
#> ~y
#>  # nolint
#> $z
#> ~z

mogrify <- function(`_df`, ...) { # nolint
  args <- f_list(...) # nolint: object_usage_linter.
   # nolint
  for (nm in names(args)) {
    `_df`[[nm]] <- f_eval(args[[nm]], `_df`) # nolint
  }
   # nolint: trailing_whitespace_linter.
  `_df`
}

add_variable <- function(df, name, expr) {
  mogrify(df, name ~ uq(expr))
}
add_variable(df, "z", ~ x + y)
#>   x y z
#> 1 1 2 3
#> 2 2 5 7
#> 3 3 3 6
#> 4 4 1 5
#> 5 5 4 9

sieve_ <- function(df, condition) {
  rows <- f_eval(condition, df) # nolint
  if (!is.logical(rows)) {
    stop("`condition` must be logical.", call. = FALSE)
  }
   # nolint: trailing_whitespace_linter.
  rows[is.na(rows)] <- FALSE
  df[rows, , drop = FALSE]
}

sieve <- function(df, expr) {
  sieve_(df, f_capture(expr)) # nolint: object_usage_linter. # nolint
}
sieve(df, x == 1)
#>   x y
#> 1 1 2

scramble <- function(df) {
  df[sample(nrow(df)), , drop = FALSE]
}
subscramble <- function(df, expr) {
  scramble(sieve(df, expr))
}
subscramble(df, x < 4)
#>   x y
#> 2 2 5
#> 1 1 2
#> 3 3 3
 # nolint
mogrify_ <- function(`_df`, args) { # nolint
  args <- as_f_list(args) # nolint: object_usage_linter.
   # nolint: trailing_whitespace_linter.
  for (nm in names(args)) {
    `_df`[[nm]] <- f_eval(args[[nm]], `_df`) # nolint
  }
   # nolint: trailing_whitespace_linter.
  `_df`
}

mogrify <- function(`_df`, ...) { # nolint
  mogrify_(`_df`, dots_capture(...)) # nolint: object_usage_linter.
}