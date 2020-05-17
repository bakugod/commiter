
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ecx,ecx
add	al,cx
and	al,ecx
set	bx,esi
set	sp,si
int	bp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
