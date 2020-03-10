
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,cx
or	sp,dx
set	edi,edi
int	ebp,ebx
res	ip,di
and	ebp,ah
aas	cx,ebx
set	eip,ax
and	sp,di
res	ax,sp
or	ah,edi
res	ip,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
