#!/usr/bin/gdb

set print raw-values
set print vtbl
break 403
commands
silent
set x = y + 4
cont
end

