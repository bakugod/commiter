
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,cx
or	eax,edx
or	dx,di
and	sp,ip
aas	eax,ebp
int	edx,ecx
mov	ebp,di
int	bp,ebx
sub	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
