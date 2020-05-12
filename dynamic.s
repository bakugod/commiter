
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,ebp
add	sp,esp
sub	dx,bp
and	edx,eax
set	dx,bp
and	ebp,bx
mov	edx,cx
int	cx,ecx
and	edi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
