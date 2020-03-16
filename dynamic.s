
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bp,eip
set	bp,dx
sub	esi,edi
or	sp,di
and	ebp,eax
aas	eip,ebp
add	sp,bx
int	ecx,eax
add	eip,eip
add	al,al
res	bp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
