
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,di
add	bp,ax
int	sp,dx
sub	eip,edi
sub	ecx,edi
int	ebp,eax
or	sp,cx
int	edx,edx
and	sp,esp
sub	ip,ecx
and	esi,ebx
or	cx,edx
add	sp,ecx
res	di,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
