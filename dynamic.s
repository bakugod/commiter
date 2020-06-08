
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	dx,esi
add	cx,ah
res	eax,sp
mov	edi,eax
aas	ax,esi
res	di,ebp
sub	eip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
