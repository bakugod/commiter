
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,ip
or	ebp,ecx
and	ip,eip
res	al,esi
set	dx,ebp
set	ax,bx
aas	eip,eip
add	ebp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
