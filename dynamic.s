
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,sp
sub	esi,edi
or	ebp,edi
aas	sp,si
sub	edx,dx
and	esp,cx
add	al,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
