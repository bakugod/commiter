
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,al
and	eax,di
and	di,bx
aas	sp,esi
res	ebp,ip
res	si,esp
sub	ax,dx
or	ip,edi
int	eip,esi
set	si,eip
add	bx,edx
mov	ecx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
