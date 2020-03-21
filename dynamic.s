
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,esi
int	edx,di
res	ax,ebx
set	ah,bp
res	eax,di
sub	di,cx
or	ebp,eax
set	sp,bx
mov	dx,cx
add	sp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
