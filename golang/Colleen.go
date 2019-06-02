package main

import (
	"fmt"
	"net"
	"os"
)

var s string

func handleConn(conn net.Conn) {
	defer conn.Close()
	fmt.Fprintf(conn, s, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 34, 34, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)
}

func main() {
	ln, err := net.Listen("tcp", ":8080")
	if err != nil {
		fmt.Printf("Error listening on localhost:8080%c", 10)
		os.Exit(1)
	}
	defer ln.Close()

	/*
	  quine server ecks dee
	*/

	s = "package main%c%cimport (%c	%cfmt%c%c	%cnet%c%c	%cos%c%c)%c%cvar s string%c%cfunc handleConn(conn net.Conn) {%c	defer conn.Close()%c	fmt.Fprintf(conn, s, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 34, 34, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)%c}%c%cfunc main() {%c	ln, err := net.Listen(%ctcp%c, %c:8080%c)%c	if err != nil {%c		fmt.Printf(%cError listening on localhost:8080%%c%c, 10)%c		os.Exit(1)%c	}%c	defer ln.Close()%c%c	/*%c	  quine server ecks dee%c	*/%c%c	s = %c%s%c%c%c	for {%c		conn, err := ln.Accept()%c		if err != nil {%c			fmt.Printf(%cError accepting connection%c)%c			continue%c		}%c		defer conn.Close()%c		go handleConn(conn)%c	}%c}%c%c/*%c  'nc localhost 8080' to read tha boi%c*/%c"

	for {
		conn, err := ln.Accept()
		if err != nil {
			fmt.Printf("Error accepting connection")
			continue
		}
		defer conn.Close()
		go handleConn(conn)
	}
}

/*
  'nc localhost 8080' to read tha boi
*/
