package main

import (
	"fmt"
	"io/ioutil"
)

const (
	i = 5
	basename = "Sully_%d.go"
)

func main() {
	if i <= 0 {
		return
	}
	target := fmt.Sprintf(basename, i-1)
	s := "package main%c%cimport (%c\t%cfmt%c%c\t%cio/ioutil%c%c)%c%cconst (%c\ti = %d%c\tbasename = %q%c)%c%cfunc main() {%c\tif i <= 0 {%c\t\treturn%c\t}%c\ttarget := fmt.Sprintf(basename, i-1)%c\ts := %q%c\tioutil.WriteFile(target, []byte(fmt.Sprintf(s, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, i-1, 10, basename, 10, 10, 10, 10, 10, 10, 10, 10, s, 10, 10, 10)), 0644)%c}%c"
	ioutil.WriteFile(target, []byte(fmt.Sprintf(s, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, i-1, 10, basename, 10, 10, 10, 10, 10, 10, 10, 10, s, 10, 10, 10)), 0644)
}
