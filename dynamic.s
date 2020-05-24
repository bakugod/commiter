
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,bx
res	ax,eax
sub	si,esi
mov	di,bx
add	bp,si
sub	ah,ah
set	cx,ah
sub	ebp,bx
mov	ecx,sp
res	di,di
res	ip,di
set	ax,al
res	ip,eax
aas	bp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
