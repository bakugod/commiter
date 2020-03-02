
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,ebp
res	esi,ebp
and	edi,ax
or	ebp,eip
mov	ebx,bx
add	ip,ip
add	esi,ebp
aas	bx,eip
sub	edx,di
res	eax,dx
and	ax,dx
or	bp,sp
res	di,di
res	sp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
