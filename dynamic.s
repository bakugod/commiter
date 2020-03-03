
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ah,ip
or	ebx,ecx
or	edx,ip
sub	dx,si
mov	ip,al
mov	bx,edi
set	ecx,al
int	ebx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
