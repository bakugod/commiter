
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,ebx
and	ebp,eax
sub	ecx,bx
sub	bx,ip
or	sp,eip
set	ah,ecx
or	cx,ebp
aas	dx,dx
or	si,cx
int	al,dx
aas	edx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
