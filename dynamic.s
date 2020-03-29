
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ip,ebp
mov	edi,si
mov	eax,ah
add	cx,ah
and	bx,ebp
int	dx,esi
res	ah,dx
mov	esp,bx
int	ah,bx
sub	edi,bx
int	ip,cx
or	edi,ebx
res	esp,esi
sub	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
