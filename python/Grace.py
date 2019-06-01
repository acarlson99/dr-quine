#!/usr/bin/env python3

target = 'Grace_kid.py'
s = "#!/usr/bin/env python3%c%ctarget = '%s'%cs = %c%s%c%cwith open(target, 'w') as f:%c    f.write(s %% (10, 10, target, 10, 34, s, 34, 10, 10, 10))%c"
with open(target, 'w') as f:
    f.write(s % (10, 10, target, 10, 34, s, 34, 10, 10, 10))
