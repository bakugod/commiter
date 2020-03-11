
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,bx
int	edx,edx
mov	ebp,ip
set	esi,ebp
and	ah,ax
or	edx,dx
aas	cx,bp
mov	si,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
