
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,ip
and	bx,edx
aas	ah,bp
set	ebx,sp
mov	ah,ebp
sub	dx,bp
aas	esp,esi
sub	ax,ebp
res	bx,ah
res	ecx,bx
mov	edx,esi
add	di,dx
and	esp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
