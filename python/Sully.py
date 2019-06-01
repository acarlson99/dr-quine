#! /usr/bin/env python3

def f():
    i=5
    if i <= 0:
        return
    target="Sully_"+str(i-1)+".py"
    s='#! /usr/bin/env python3%c%cdef f():%c    i=%d%c    if i <= 0:%c        return%c    target="Sully_"+str(i-1)+".py"%c    s=%r%c    with open(target, "w") as f:%c        f.write(s%%(10, 10, 10, i-1, 10, 10, 10, 10, s, 10, 10, 10, 10, 10))%c%cf()%c'
    with open(target, "w") as f:
        f.write(s%(10, 10, 10, i-1, 10, 10, 10, 10, s, 10, 10, 10, 10, 10))

f()
