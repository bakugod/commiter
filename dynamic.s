
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,al
int	si,esp
set	ip,di
res	ax,ebx
or	ah,dx
res	ebp,di
add	edx,ah
set	edi,eip
sub	eip,ah
res	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
