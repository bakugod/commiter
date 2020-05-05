
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,esp
set	sp,edx
and	sp,edx
set	sp,edx
and	bx,edx
sub	eip,edx
and	ebx,cx
int	ip,esi
set	ah,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
