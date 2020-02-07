
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eip,ebp
set	bx,cx
sub	ip,ax
res	ip,edx
sub	bx,esi
add	eax,ah
and	cx,ax
sub	esi,ah
mov	al,di
res	ip,edi
aas	ah,edx
add	cx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
