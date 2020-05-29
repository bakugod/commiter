
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	dx,ip
add	ecx,esp
sub	bp,edx
add	ebp,bp
sub	al,bx
mov	edx,ecx
set	dx,bp
and	cx,ebx
aas	sp,ecx
or	ecx,esp
int	di,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
