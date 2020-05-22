
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,sp
set	ip,esp
int	ebx,ah
res	dx,al
aas	edx,bp
aas	ecx,esi
and	ip,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
