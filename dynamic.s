
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,sp
add	esi,edi
and	bp,ip
and	edx,si
sub	eax,bp
set	ax,ax
and	di,ax
int	ebx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
