#!/usr/bin/gdb

set print raw-values
set print vtbl
info vtbl("history.txt")
catch syscall 5
catch signal 4
enable count(hit count)
save gdb-index save gdb-index [-dwarf-5] /home/admin/guile-gambas/guile-m4/matrix/gnu/bin/gdb/inc/.config/gdb/gdbearlyinit/gdb-index.gdbinit
set confirm
set args
set compile-args
set print array
catch signal 11
set debug compile
set edit
catch signal 3
quit

