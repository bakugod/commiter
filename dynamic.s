
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edx,cx
set	ecx,al
int	eax,eax
set	bx,bp
or	ebp,di
add	bp,ecx
sub	bp,ah
or	ax,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
