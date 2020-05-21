
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,eax
sub	bp,esi
set	ebx,ip
and	bp,ip
add	ebp,cx
int	dx,bp
mov	cx,edi
int	dx,esi
mov	dx,ecx
sub	bx,bx
sub	si,ax
sub	bp,al
sub	edx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
