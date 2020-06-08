
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,esi
res	si,esp
mov	esi,ip
set	dx,eax
or	sp,al
sub	ecx,bx
add	ebx,ax
add	ebx,al
and	ebx,edx
or	ecx,di
sub	bp,di
mov	di,cx
aas	eax,ip
res	eip,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
