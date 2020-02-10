
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ah,eip
set	si,sp
res	eax,cx
res	esp,edx
add	ecx,edx
sub	dx,cx
mov	edx,bx
and	ecx,eax
and	eax,ebx
set	cx,al
set	edx,esi
sub	sp,esi
aas	esi,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
