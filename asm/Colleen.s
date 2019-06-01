section .data
fmt: db "section .data%cfmt: db %c%s%c%c%csection .text%cglobal start%cglobal _main%cextern _printf%c%c_main:%c	push rbp%c	mov rbp, rsp%c	; print tha boiiiiiiiiiiiiiii%c	call _printboi%c	leave%c	ret%c%c_printboi:%c	push rbp%c	mov rbp, rsp%c	lea rdi, [rel fmt]%c	mov rsi, 10%c	mov rdx, 34%c	lea rcx, [rel fmt]%c	mov r8, 34%c	mov r9, 10%c	mov r14, 38%c.loop:%c	push rsi%c	dec r14%c	cmp r14, 0%c	jne .loop%c	call _printf%c	mov rax, 0%c	leave%c	ret%c%c; löööööööp%c"

section .text
global start
global _main
extern _printf

_main:
	push rbp
	mov rbp, rsp
	; print tha boiiiiiiiiiiiiiii
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
	mov r8, 34
	mov r9, 10
	mov r14, 38
.loop:
	push rsi
	dec r14
	cmp r14, 0
	jne .loop
	call _printf
	mov rax, 0
	leave
	ret

; löööööööp
