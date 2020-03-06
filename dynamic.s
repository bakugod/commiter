
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,sp
res	eip,bp
sub	ebx,di
mov	ebp,eax
sub	dx,eax
set	bx,di
add	esp,edx
mov	si,edi
set	esp,esi
add	ecx,eip
set	ebx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
