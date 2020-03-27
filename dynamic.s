
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	cx,cx
set	ah,eax
or	eax,di
or	ebp,eip
res	esi,eax
mov	sp,bx
mov	ip,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
