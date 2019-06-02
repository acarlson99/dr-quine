package main

import (
	"fmt"
	"io/ioutil"
)

/*
  No idea what to do instead of macros, dawg
*/

func main() {
	target := "Grace_kid.go"
	s := "package main%c%cimport (%c\t%cfmt%c%c\t%cio/ioutil%c%c)%c%c/*%c  No idea what to do instead of macros, dawg%c*/%c%cfunc main() {%c\ttarget := %q%c\ts := %q%c\tioutil.WriteFile(target, []byte(fmt.Sprintf(s, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, target, 10, s, 10, 10, 10)), 0644)%c}%c"
	ioutil.WriteFile(target, []byte(fmt.Sprintf(s, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, target, 10, s, 10, 10, 10)), 0644)
}
