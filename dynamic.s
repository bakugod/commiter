
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	si,ebx
int	ebx,edi
sub	ip,dx
mov	ip,ax
or	edx,di
mov	ip,cx
set	al,edi
sub	si,ebp
mov	bp,ecx
and	ebp,al
aas	eax,esi
or	dx,ecx
mov	ecx,di
aas	di,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
