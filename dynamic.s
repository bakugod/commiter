
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,esi
res	ax,al
aas	al,edi
add	di,ebp
set	al,ip
sub	esp,esi
aas	sp,edx
int	edi,ip
aas	bp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
