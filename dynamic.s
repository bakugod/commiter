
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,ebp
aas	eip,eax
res	ecx,ebp
int	di,ebx
and	ax,bx
res	esi,ah
or	si,edx
and	cx,ebp
aas	eax,edx
add	edx,ip
set	bp,ebx
res	di,edx
set	si,al
set	ebp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
