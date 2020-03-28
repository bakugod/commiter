
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edx,ebx
aas	ip,esp
and	ah,ax
res	bx,eip
and	esi,cx
set	ecx,eax
set	bx,eip
mov	dx,al
set	eax,edi
res	si,bx
int	esp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
