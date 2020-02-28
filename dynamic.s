
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,esi
aas	bx,ecx
mov	sp,cx
res	bp,eax
and	dx,ebp
mov	ip,eax
set	ip,esp
sub	esi,al
and	ebx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
