
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,al
aas	bp,esp
sub	eip,ah
set	edx,ah
set	bp,ax
aas	cx,ecx
or	ebx,esp
add	ah,bx
res	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
