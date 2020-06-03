
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,ebx
sub	ah,eip
sub	ip,esp
mov	ecx,edi
res	di,dx
res	ah,ebx
add	ah,esi
add	esi,esi
add	dx,esp
set	edx,al
aas	dx,ebx
sub	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
