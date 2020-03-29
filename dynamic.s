
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebp,dx
or	edi,edx
int	bx,ah
and	sp,esi
aas	eax,eax
or	ecx,bx
and	ebp,si
add	ebp,si
add	ecx,al
or	di,ebp
set	ebp,ecx
sub	ip,di
set	bp,esi
or	esp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
