
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,al
mov	sp,eax
add	ebp,di
add	bx,ah
or	si,esi
int	ah,ax
or	al,di
sub	sp,eip
add	ax,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
