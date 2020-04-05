
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,ah
aas	ebp,ebx
aas	ecx,bx
res	si,eax
mov	al,bp
and	ah,eax
or	bp,al
and	eax,ax
set	dx,si
add	eax,edx
sub	ecx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
