
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,edx
res	ax,ebp
aas	cx,sp
res	esi,eax
add	esi,ip
res	bx,ebp
set	ax,bp
or	si,edx
mov	sp,esi
add	ax,dx
int	eax,edi
sub	dx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
