
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,esp
and	edx,bx
int	esi,ebx
sub	dx,esi
add	sp,esp
set	al,dx
and	eax,eax
sub	dx,ebx
res	bp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
