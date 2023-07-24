#!/usr/bin/gdb

set print raw-values
set print vtbl
catch syscall 4
set dprintf-channel 4
call 4
inspect 55
p 4
find("\0")
append binary memory("cat.gdbinit")
info address gdb
info auto-load local-gdbinit
set edit on
info args 12
tcatch syscall 0
tcatch syscall 4
tcatch load 0
tcatch load 2
enable display
enable count(hit count)
save breakpoint("icat.inc")
quit



