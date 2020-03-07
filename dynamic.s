
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,ebx
or	ebp,sp
mov	ip,dx
aas	esp,ax
aas	eax,esi
mov	di,edx
and	eax,ebx
or	cx,ah
or	ah,ip
sub	esp,al
mov	eip,ebx
and	bx,bx
add	bp,edi
int	al,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
