#! /usr/bin/env python3
# Comment A
def fun():
    return '#! /usr/bin/env python3%c# Comment A%cdef fun():%c    return %r%c# Comment B%cprint(fun() %% (10, 10, 10, fun(), 10, 10))'
# Comment B
print(fun() % (10, 10, 10, fun(), 10, 10))
