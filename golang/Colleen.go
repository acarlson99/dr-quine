package main

import (
	"fmt"
	"sync"
)

var msgs []string
var data []int

func boi(intchan chan int, wg *sync.WaitGroup) {
	defer wg.Done()
	for {
		i := <- intchan
		if i >= len(msgs) {
			return
		}
		fmt.Printf(msgs[i], data[i])
	}
}

func fill(intchan chan int) {
	for i := 0; i < 100; i++ {
		intchan <- i
	}
}

func main() {
	msgs = []string{"%d\n", "%d\n", "%d\n"}
	data = []int{1,69,100}
	fmt.Printf("%d\n", len(msgs))
	intchan := make(chan int)
	var wg sync.WaitGroup
	s := "A%dA\n"
	fmt.Printf(s, 4)
	go fill(intchan)
	for i := 0; i < 4; i++ {
		go boi(intchan, &wg)
		wg.Add(1)
	}
	wg.Wait()
	fmt.Printf(s, 4)
}
