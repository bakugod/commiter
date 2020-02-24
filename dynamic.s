
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,dx
mov	ecx,esp
add	bp,eip
add	eip,ax
or	si,esp
res	di,esi
sub	bp,ebx
and	bx,al
set	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
