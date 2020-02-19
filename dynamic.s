
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edi,bx
mov	eax,ebp
set	ip,bp
add	ax,ip
aas	ax,esi
mov	edx,bp
set	esp,al
add	ecx,ebx
set	ah,eax
sub	ebx,al
add	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
