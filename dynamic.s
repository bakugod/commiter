
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,esi
and	ebx,si
add	edx,ip
res	ecx,ebp
and	bx,al
set	ip,cx
or	ebx,edi
aas	ecx,cx
add	ip,eax
or	ah,ebp
aas	esi,dx
and	di,si
res	ecx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
