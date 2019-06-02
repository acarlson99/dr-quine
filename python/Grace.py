#!/usr/bin/env python3

target = 'Grace_kid.py'
s = '#!/usr/bin/env python3%c%ctarget = %r%cs = %r%c# 🅱️%ctry:%c    with open(target, "w") as f:%c        f.write(s %% (10, 10, target, 10, s, 10, 10, 10, 10, 10, 10, 10))%cexcept:%c    pass%c'
# 🅱️
try:
    with open(target, "w") as f:
        f.write(s % (10, 10, target, 10, s, 10, 10, 10, 10, 10, 10, 10))
except:
    pass
