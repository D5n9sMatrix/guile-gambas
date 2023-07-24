#!/usr/bin/r

eval(rand_seed)
rnorm(1)  # .Random.seed is created (or modified)
eval(rand_seed)
