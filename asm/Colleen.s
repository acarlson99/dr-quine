section .data
fmt: db "section .data%cfmt: db %c%s%c%csection .text%cglobal start%cglobal _main%cextern _printf%c_main:%c	push rbp%c	mov rbp, rsp%c	lea rdi, [rel fmt]%c	mov rsi, 10%c	mov rdx, 34%c	lea rcx, [rel fmt]%c	mov r8, 34%c	mov r9, 10%c	mov r14, 28%c.loop:%c	push rsi%c	dec r14%c	cmp r14, 0%c	jne .loop%c	call _printf%c	mov rax, 0%c	leave%c	ret%c_printboi:%c	push rbp%c	mov rbp, rsp%c	leave%c	ret%c"
section .text
global start
global _main
extern _printf
_main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel fmt]
	mov rsi, 10
	mov rdx, 34
	lea rcx, [rel fmt]
	mov r8, 34
	mov r9, 10
	mov r14, 28
.loop:
	push rsi
	dec r14
	cmp r14, 0
	jne .loop
	call _printf
	mov rax, 0
	leave
	ret
_printboi:
	push rbp
	mov rbp, rsp
	leave
	ret
