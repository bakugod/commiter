
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,edx
and	esp,esi
add	ebx,edi
mov	esp,eax
sub	si,ecx
mov	ip,bp
set	ebp,ecx
int	edi,ah
res	eip,edi
add	ebx,ebp
set	bx,cx
res	ax,cx
add	al,sp
aas	ecx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
