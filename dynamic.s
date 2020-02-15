
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esp,dx
mov	bx,edx
or	eax,ecx
set	bp,di
or	eip,dx
add	edi,ebp
set	esi,sp
add	ecx,cx
or	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
