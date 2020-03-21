
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,bx
aas	esi,ax
res	bp,si
add	dx,ax
int	eax,edx
or	ebx,sp
add	ip,bp
mov	ah,ecx
add	ah,ax
res	esi,eax
sub	ebx,si
aas	ebp,ah
res	bp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
