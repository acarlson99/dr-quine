section .data
fmt: db "section .data%cfmt: db %c%s%c%csection .text%cglobal start%cglobal _main%cextern _printf%c_main:%cREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE%c"
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

	mov r13, 10
	push r13
	mov r14, 10
.loop:
	push r13
	sub rsp, 8
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
