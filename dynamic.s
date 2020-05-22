
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edx,ip
and	cx,esi
mov	ah,ebp
res	cx,dx
or	di,bx
sub	ebp,eip
sub	dx,al
or	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
