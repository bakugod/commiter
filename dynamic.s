
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bx,bx
res	ebx,ah
set	ip,esi
aas	ip,eip
mov	di,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
