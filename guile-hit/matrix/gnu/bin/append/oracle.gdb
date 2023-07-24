#!/usr/bin/gdb

set print raw-values
set print vtbl
p $hit_bpnum
break func if a == 512
info breakpoints
tbreak args
hbreak args
thbreak args
rbreak regex
set language
set language auto
rbreak
rbreak table.gdb:regex
set breakpoint pending auto
set breakpoint pending on
set breakpoint auto-hw on
set breakpoint condition-evaliation host
set breakpoint condition-evaliation auto
set can-use-hw-watchpoints 512
