#! /usr/bin/env python3
# Comment A
def fun():
    return "#! /usr/bin/env python3%c# Comment A%cdef fun():%c    return %c%s%c%c# Comment B%cdef main():%c    print(fun() %% (10, 10, 10, 34, fun(), 34, 10, 10, 10, 10, 10, 10))%c%cif __name__ == '__main__':%c    main()"
# Comment B
def main():
    print(fun() % (10, 10, 10, 34, fun(), 34, 10, 10, 10, 10, 10, 10))

if __name__ == '__main__':
    main()
