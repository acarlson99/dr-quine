#! /usr/bin/env python3
# Comment A
def fun():
    return '#! /usr/bin/env python3%c# Comment A%cdef fun():%c    return %r%cdef main():%c    # Comment B%c    print(fun() %% (10, 10, 10, fun(), 10, 10, 10, 10, 10))%c%cmain()'
def main():
    # Comment B
    print(fun() % (10, 10, 10, fun(), 10, 10, 10, 10, 10))

main()
