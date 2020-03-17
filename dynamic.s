
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,ebx
sub	bp,ah
add	al,sp
add	bx,si
sub	esp,esi
aas	bx,dx
and	esp,si
mov	bx,cx
set	ip,di
aas	al,ax
add	ebx,cx
set	ah,ebp
res	esp,dx
and	dx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
