
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,ecx
int	cx,edx
and	ax,ah
add	di,bx
or	eax,di
mov	esp,al
and	esi,ebp
sub	ebp,si
set	bp,esi
aas	si,cx
set	ebp,al
set	eip,bx
mov	edi,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
