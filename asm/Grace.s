%macro A 0
_main:
	push rbp
	mov rbp, rsp

	B

	call _printf

	; mov rax, 0
	leave
	ret
%endmacro
%macro B 0
	lea rdi, [rel fmt]
	mov rsi, 10
	mov rdx, 10
	mov rcx, 10
	mov r8, 10
	mov r9, 10
	mov r14, 0
; .loop:
; 	push rsi
; 	; sub rsp, 8
; 	dec r14
; 	cmp r14, 0
; 	jne .loop

	push rsi
	push rsi
	push rsi
	push rsi
	push rsi
	push rsi
	push rsi
	mov r14, 34
	push r14
	mov r13, [rel target]
	push r13
	push r14
	push rsi
	push r14
	mov r13, [rel fmt]
	push r13
	push r14
	push rsi
	push rsi
	; push rsi
	; push r14
	; sub rsp, 8
%endmacro
%macro C 0
%endmacro

section .data
fmt: db "%c%c%c%c%csection .data%c%cfmt: db %c%s%c,0%ctarget: db %c%s%c,0%csection .text%cglobal _main%cextern _printf%c%c; One explainy boi%c%cA%c",0
target: db "Grace_kid.s",0

section .text
global _main
extern _printf

; One explainy boi

A
