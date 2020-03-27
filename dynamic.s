
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,bx
int	eip,esp
add	esp,cx
mov	ecx,ebx
set	eax,al
res	eax,ax
int	bx,ip
or	eip,ecx
set	al,ip
set	bp,ecx
or	ah,edx
sub	di,ebx
and	dx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
