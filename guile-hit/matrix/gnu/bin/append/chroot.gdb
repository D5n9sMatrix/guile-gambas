#!/usr/bin/gdb

set print raw-values
set print vtbl
c
break foo if x > 0
commands
printf "x is %d\n", x
cont 
end

