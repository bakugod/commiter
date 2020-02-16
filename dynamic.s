
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,cx
res	esi,sp
mov	esp,ah
and	si,ebp
aas	bp,bp
res	ecx,bx
int	eip,ebp
add	bx,cx
mov	eax,ebx
or	ah,ebp
add	ebp,bp
int	edx,ebx
mov	edi,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
