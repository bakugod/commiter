
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bx,al
sub	edx,esi
res	dx,bp
sub	ah,dx
add	ebx,al
mov	si,si
mov	cx,bp
set	eax,edx
and	ah,di
add	ah,ecx
res	ecx,bx
aas	bp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
