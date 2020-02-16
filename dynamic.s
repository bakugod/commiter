
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,ax
sub	eip,esi
int	ecx,si
mov	bx,al
set	ip,ip
or	ebx,esi
int	ah,edx
add	dx,di
int	ebp,al
int	bp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
