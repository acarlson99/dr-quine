section .data
target: db "Sully_%d.s",0
fmt: db "section .data%1$ctarget: db %2$cSully_%%d.s%2$c,0%1$cfmt: db %2$c%3$s%2$c,0%1$cnum: dd %4$d%1$c%1$csection .text%1$cglobal _main%1$cextern _dprintf%1$cextern _sprintf%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	lea rdi, [rel target]%1$c	lea rsi, [rel target]%1$c	mov rdx, [rel num]%1$c	cmp rdx, 0%1$c	jle .ret%1$c	dec rdx%1$c	call _sprintf%1$c%1$c	mov rax, 0x2000005%1$c	lea rdi, [rel target]%1$c	mov rsi, 1537%1$c	mov rdx, 448%1$c	clc%1$c%1$c	syscall%1$c	jc .ret%1$c	cmp rax, 0%1$c	jle .bad%1$c%1$c	mov rdi, rax%1$c	lea rsi, [rel fmt]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel fmt]%1$c	mov r9, [rel num]%1$c	dec r9%1$c	call _dprintf%1$c%1$c	mov rax, 0x20000006%1$c	mov rdi, r14%1$c	syscall%1$c	mov rax, 0%1$c%1$c.ret:%1$c	leave%1$c	ret%1$c%1$c.bad:%1$c	mov rax, 1%1$c	jmp .ret%1$c",0
num: dd 5

section .text
global _main
extern _dprintf
extern _sprintf

_main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel target]
	lea rsi, [rel target]
	mov rdx, [rel num]
	cmp rdx, 0
	jle .ret
	dec rdx
	call _sprintf

	mov rax, 0x2000005
	lea rdi, [rel target]
	mov rsi, 1537
	mov rdx, 448
	clc

	syscall
	jc .ret
	cmp rax, 0
	jle .bad

	mov rdi, rax
	lea rsi, [rel fmt]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel fmt]
	mov r9, [rel num]
	dec r9
	call _dprintf

	mov rax, 0x20000006
	mov rdi, r14
	syscall
	mov rax, 0

.ret:
	leave
	ret

.bad:
	mov rax, 1
	jmp .ret
