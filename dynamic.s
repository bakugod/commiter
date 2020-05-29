
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ebx
aas	sp,ebx
and	ecx,ebp
and	ebx,sp
or	al,di
mov	ah,dx
or	ebp,edi
int	ax,edx
res	ax,dx
and	si,bx
int	cx,ebx
sub	sp,sp
mov	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
