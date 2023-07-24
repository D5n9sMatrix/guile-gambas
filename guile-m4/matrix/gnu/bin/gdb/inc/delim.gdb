#!/usr/bin/gdb

set print raw-values
set print vtbl
pipe p var|wc
catch signal 13 
catch load("gdb")
set compile-args
set args
set auto-load no
set auto-load gdb-scripts
set auto-load guile-scripts
set debug compile
set debug entry-values 1112
set debug entry-values 2212
set debug entry-values 3312
set debug entry-values 4412
set debug entry-values 5512
set debug entry-values 6612
set debug entry-values 7712
set debug entry-values 8812
set debug entry-values 9912
# value cache size
set dcache size 1112
set dcache size 2212
set dcache size 3312
set dcache size 4412
set dcache size 5512
set dcache size 6612
set dcache size 7712
set dcache size 8812
set dcache size 9912
quit