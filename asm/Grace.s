%macro A 0
C
_main:
	push rbp
	mov rbp, rsp

	B

	call _dprintf

	mov rax, 0x20000006
	mov rdi, r14
	syscall
	mov rax, 0

.ret:
	leave
	ret
%endmacro
%macro B 0
	mov rax, 0x2000005
	lea rdi, [rel target]
	mov rsi, 1537
	mov rdx, 448
	clc

	syscall
	jc .ret
	cmp rax, 0
	jle .ret

	mov rdi, rax
	mov r14, rdi
	lea rsi, [rel fmt]
	mov rdx, 10
	lea rcx, [rel target]
	lea r8, [rel fmt]
	mov r9, 34
%endmacro
%macro C 0
section .data
fmt: db "%%macro A 0%1$cC%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	B%1$c%1$c	call _dprintf%1$c%1$c	mov rax, 0x20000006%1$c	mov rdi, r14%1$c	syscall%1$c	mov rax, 0%1$c%1$c.ret:%1$c	leave%1$c	ret%1$c%%endmacro%1$c%%macro B 0%1$c	mov rax, 0x2000005%1$c	lea rdi, [rel target]%1$c	mov rsi, 1537%1$c	mov rdx, 448%1$c	clc%1$c%1$c	syscall%1$c	jc .ret%1$c	cmp rax, 0%1$c	jle .ret%1$c%1$c	mov rdi, rax%1$c	mov r14, rdi%1$c	lea rsi, [rel fmt]%1$c	mov rdx, 10%1$c	lea rcx, [rel target]%1$c	lea r8, [rel fmt]%1$c	mov r9, 34%1$c%%endmacro%1$c%%%macro C 0%1$csection .data%1$cfmt: db %4$c%3$s%4$c,0%1$ctarget: db %4$c%2$s%4$c,0%1$c%1$csection .text%1$cglobal _main%1$cextern _dprintf%1$c%%endmacro%1$c%1$c; One explainy boi%1$c%1$cA%1$c",0
target: db "Grace_kid.s",0

section .text
global _main
extern _dprintf
%endmacro

; One explainy boi

A
