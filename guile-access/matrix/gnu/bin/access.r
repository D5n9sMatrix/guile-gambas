#!/usr/bin/r

nbld <- 11
tbld <- prettyunits::pretty_sec(5.6)
cli_alert_success("Built {.emph {nbld}} status report{?s} in {tbld}.")
#> ✔ Built 11 status reports in 5.6s.
file_access("matrix/gnu/bin/access.r", mode = "exists")                                               # nolint
file_exists("matrix/gnu/bin/access.r")
dir_exists("matrix/gnu/bin")
link_exists("matrix/gnu/lib")

file_create("foo")
file_touch("foo", "2018-01-01")
file_info("foo")[c("access_time", "modification_time", "change_time", "birth_time")] # nolint

## Don't show:  # nolint
.old_wd <- setwd(tempdir())
## End(Don't show)
file_create("foo")
file_touch("foo", "2018-01-01")
file_info("foo")[c("access_time", "modification_time", "change_time", "birth_time")] # nolint

x %@% name

  ## S3 method for class 'BasicObject'
this$name
  ## S3 method for class 'BasicObject'
this[[name, exact=TRUE]] # nolint

args <- cmdArgs()
cat("User command-line arguments used when invoking R:\n")
str(args)

# Retrieve command line argument 'n', e.g. '-n 13' or '--n=13'
n <- cmdArg("n", 42L)
printf("Argument n=%d\n", n)


# Short version doing the same
n <- cmdArg(n=42L) # nolint
printf("Argument n=%d\n", n)

## Default S3 method:
fileAccess(pathname, mode=0, safe=TRUE, ...) # nolint

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Current directory
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- "."

# Test for existence
print(fileAccess(path, mode=0)) # nolint: infix_spaces_linter.
# Test for execute permission
print(fileAccess(path, mode=1)) # nolint
# Test for write permission
print(fileAccess(path, mode=2)) # nolint: infix_spaces_linter.
# Test for read permission
print(fileAccess(path, mode=4)) # nolint

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A temporary file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pathname <- tempfile()
cat(file=pathname, "Hello world!") # nolint: infix_spaces_linter.


# Test for existence
print(fileAccess(pathname, mode=0)) # nolint
# Test for execute permission
print(fileAccess(pathname, mode=1)) # nolint: infix_spaces_linter.
# Test for write permission
print(fileAccess(pathname, mode=2)) # nolint
# Test for read permission
print(fileAccess(pathname, mode=4)) # nolint: infix_spaces_linter.

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# The 'base' package directory
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- system.file(package="base") # nolint: infix_spaces_linter. # nolint

# Test for existence
print(fileAccess(path, mode=0)) # nolint
# Test for execute permission
print(fileAccess(path, mode=1)) # nolint: infix_spaces_linter.
# Test for write permission
print(fileAccess(path, mode=2)) # nolint
# Test for read permission
print(fileAccess(path, mode=4)) # nolint: infix_spaces_linter.


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# The 'base' package DESCRIPTION file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pathname <- system.file("DESCRIPTION", package="base") # nolint

# Test for existence
print(fileAccess(pathname, mode=0)) # nolint: infix_spaces_linter.
# Test for execute permission
print(fileAccess(pathname, mode=1)) # nolint
# Test for write permission
print(fileAccess(pathname, mode=2)) # nolint: infix_spaces_linter.
# Test for read permission
print(fileAccess(pathname, mode=4)) # nolint
 # nolint
