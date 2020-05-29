
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,ebx
mov	esp,ah
sub	ebx,cx
aas	ecx,ebx
and	ebx,ip
aas	ah,dx
res	esi,si
add	bx,edi
set	bx,al
and	ax,ebx
and	ebp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
