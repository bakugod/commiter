
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,edi
set	ip,ip
and	cx,bx
aas	ebx,edi
set	dx,esi
add	edx,ebp
and	cx,ecx
add	ip,edx
set	di,eip
aas	bx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
