
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eip,dx
and	ax,ebp
int	sp,eip
add	ebp,ip
add	eip,ebp
res	eip,bx
sub	edi,ecx
and	ah,sp
and	ebx,ip
set	sp,edx
set	di,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
