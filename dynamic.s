
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ip,di
mov	si,ebx
sub	eax,si
mov	ip,sp
set	ah,ah
set	bx,ebx
set	bp,bp
sub	cx,ax
and	ah,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
