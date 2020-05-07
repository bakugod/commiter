
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,dx
and	cx,eax
int	ebx,esp
sub	edx,ebx
or	eip,al
and	bp,ecx
and	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
