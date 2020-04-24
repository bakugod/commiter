
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,ax
or	edx,cx
or	esi,al
mov	ecx,di
aas	ebx,ax
and	ax,esi
sub	ax,dx
mov	ip,al
aas	edi,ax
sub	ebp,ax
set	esi,al
set	ebx,si
set	di,ebx
int	edi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
