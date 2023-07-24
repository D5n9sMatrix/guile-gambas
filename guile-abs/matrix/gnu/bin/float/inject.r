#!/usr/bin/r

library(evaluate)
# normally you cannot capture the output of system
evaluate("system('R --version')")