
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,esi
mov	sp,ah
set	esi,cx
sub	bx,edx
and	eip,bp
res	ax,di
or	esi,ah
and	ecx,dx
int	ah,sp
add	ebp,edx
mov	ax,edi
res	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
