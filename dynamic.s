
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,al
res	esi,edx
int	ip,esp
and	si,bp
set	esi,sp
and	ah,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
