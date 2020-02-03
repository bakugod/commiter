
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	cx,edi
int	sp,ecx
or	cx,ebp
int	edi,eip
set	sp,eip
or	ebx,al
or	ecx,dx
and	ax,ax
and	ebp,di
sub	ax,bp
set	esi,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
