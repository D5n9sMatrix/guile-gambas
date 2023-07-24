#!/usr/bin/r

x %@% name
x %@% name <- value

# Unlike `@`, this operator extracts attributes for any kind of
# objects:
factor(1:3) %@% "levels"
mtcars %@% class

mtcars %@% class <- NULL
mtcars

# It also works on S4 objects:
.Person <- setClass("Person", slots = c(name = "character", species = "character")) # nolint
fievel <- .Person(name = "Fievel", species = "mouse")
fievel %@% name

environment(fun = NULL)
environment(fun) <- value

is.environment(x)

.GlobalEnv
globalenv()
.BaseNamespaceEnv

fa <- file.access(dir("."))
table(fa) # count successes & failures
 # nolint

formals(fun = sys.function(sys.parent()), envir = parent.frame())
formals(fun, envir = environment(fun)) <- value

require(stats)
formals(lm)

## If you just want the names of the arguments, use formalArgs instead.
names(formals(lm))
methods:: formalArgs(lm)     # same

## formals returns a pairlist. Arguments with no default have type symbol (aka name). # nolint
str(formals(lm))

## formals returns NULL for primitive functions.  Use it in combination with
## args for this case.
is.primitive(`+`)
formals(`+`)
formals(args(`+`))

## You can overwrite the formal arguments of a function (though this is
## advanced, dangerous coding).
f <- function(x) a + b
formals(f) <- alist(a = , b = 3)
f    # function(a, b = 3) a + b # nolint
f(2) # result = 5 # nolint: commented_code_linter.

x <- new_rcrd(list(x = 1:3, y = 3:1, z = letters[1:3]))
n_fields(x)
fields(x)

field(x, "y")
field(x, "y") <- runif(3)
field(x, "y")
