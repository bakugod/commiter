
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,cx
set	ip,si
set	ah,dx
or	edx,esp
sub	bp,eax
res	eip,di
res	eip,bx
sub	sp,sp
res	ip,cx
set	edx,ah
mov	cx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
