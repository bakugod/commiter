
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,eip
res	si,bp
res	esi,edi
add	di,sp
mov	ebx,bx
sub	ah,edi
mov	ecx,di
aas	bp,di
set	edi,bp
int	esi,ah
add	ebp,esp
add	al,dx
and	dx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
