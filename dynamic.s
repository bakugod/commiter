
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,ax
mov	edx,ah
set	eip,ebx
or	ip,ax
add	eax,ax
mov	al,sp
or	eax,ah
or	bp,al
and	ebp,ebx
set	esp,cx
sub	ebx,edi
res	eip,ebx
sub	ip,eip
mov	cx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
