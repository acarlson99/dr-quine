#!/usr/bin/env bash

case $# in
	1)
		cd $1
		;;
	*)
		echo 'usage: ./test_dir dir'
		exit 1
		;;
esac

function compile() {
	case "$1" in
		*.c)
			cc $1
			;;
		*.s)
			nasm -f macho64 -o outfile.o $1
			cc outfile.o
			;;
		*.go)
			go build -o a.out $1
			;;
	esac
}

compile Colleen.*
diff Colleen.* <(./a.out)

rm Grace_kid.*
compile Grace.*
./a.out
diff Grace.* Grace_kid.*

rm -f Sully_[0-9].*
compile Sully.*
./a.out
diff Sully_4.* Sully.*
for ii in {4..0}; do
	compile Sully_${ii}.*
	./a.out
	diff Sully_${ii}.* Sully.*
done
ls Sully_*
