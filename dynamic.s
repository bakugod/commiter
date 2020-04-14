
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eax,ebp
add	ax,ecx
mov	di,esp
set	bx,bx
and	edi,ebp
add	bp,ebx
add	edi,eax
set	ax,edi
res	eip,sp
and	bx,eax
or	edx,eip
or	edi,dx
and	ebx,ip
res	dx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
