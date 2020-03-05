
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	cx,ebp
mov	bp,si
mov	cx,edx
and	cx,si
sub	edx,ebp
res	al,ip
res	edx,ip
res	al,cx
set	dx,dx
or	eax,esi
set	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
