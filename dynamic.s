
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ah,dx
aas	ecx,eax
or	bx,ip
or	bx,esi
add	di,edi
res	al,ecx
set	eax,ecx
sub	al,ip
res	eax,bp
sub	edx,cx
int	eip,ip
and	dx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
