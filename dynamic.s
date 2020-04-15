
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,di
int	dx,cx
or	ah,bx
add	eax,esp
int	dx,cx
and	ebx,ax
sub	esp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
