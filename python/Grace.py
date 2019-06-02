#!/usr/bin/env python3

target = 'Grace_kid.py'
s = '#!/usr/bin/env python3%c%ctarget = %r%cs = %r%c# 🅱️%cwith open(target, "w") as f:%c    if not f.closed:%c        f.write(s %% (10, 10, target, 10, s, 10, 10, 10, 10, 10))%c'
# 🅱️
with open(target, "w") as f:
    if not f.closed:
        f.write(s % (10, 10, target, 10, s, 10, 10, 10, 10, 10))
