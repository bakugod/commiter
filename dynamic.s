
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esp,esp
sub	ip,dx
set	esp,eax
set	edx,ax
add	al,al
or	edx,bx
set	dx,ebp
int	ip,al
int	ip,di
or	esi,al
set	bp,dx
or	ah,di
int	eip,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
