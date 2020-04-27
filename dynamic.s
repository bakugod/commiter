
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	cx,cx
int	esi,si
int	ecx,edi
sub	di,ax
res	bx,ax
sub	eip,sp
set	ecx,edi
set	ebp,esi
add	sp,al
sub	sp,esi
and	esp,edi
add	di,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
