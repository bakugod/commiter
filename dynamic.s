
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,ebp
add	esi,ax
add	ah,al
set	ecx,al
set	si,bx
sub	ip,ebp
set	al,edi
add	bx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
