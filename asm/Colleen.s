section .data
fmt: db "section .data%1$cfmt: db %2$c%3$s%2$c,0%1$c%1$csection .text%1$cglobal start%1$cglobal _main%1$cextern _printf%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	; print that boi%1$c	call _printboi%1$c	leave%1$c	ret%1$c%1$c_printboi:%1$c	push rbp%1$c	mov rbp, rsp%1$c	lea rdi, [rel fmt]%1$c	mov rsi, 10%1$c	mov rdx, 34%1$c	lea rcx, [rel fmt]%1$c	call _printf%1$c	mov rax, 0%1$c	leave%1$c	ret%1$c%1$c; löööööööp%1$c",0

section .text
global start
global _main
extern _printf

_main:
	push rbp
	mov rbp, rsp
	; print that boi
	call _printboi
	leave
	ret

_printboi:
	push rbp
	mov rbp, rsp
	lea rdi, [rel fmt]
	mov rsi, 10
	mov rdx, 34
	lea rcx, [rel fmt]
	call _printf
	mov rax, 0
	leave
	ret

; löööööööp
