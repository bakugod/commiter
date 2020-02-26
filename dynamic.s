
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,dx
set	dx,bx
res	si,esi
sub	bp,ecx
sub	esp,edi
add	di,ebp
and	sp,esp
and	bx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
