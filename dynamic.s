
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,ax
aas	ecx,edi
res	esi,esi
and	edi,ip
and	dx,al
add	esi,eip
or	cx,eax
mov	ebx,esi
mov	cx,eip
int	bx,eip
set	eip,edx
add	ip,ax
add	cx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
