
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bp,eip
res	eax,esp
add	dx,ebp
aas	eip,ip
add	esi,bx
aas	ebx,bp
and	eax,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
