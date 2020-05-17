
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebp,ecx
add	dx,bx
and	edx,edx
res	ecx,di
sub	sp,eip
mov	esi,bx
res	di,edi
mov	esp,bx
res	cx,bx
set	esp,edi
res	edx,cx
and	al,bx
sub	cx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
