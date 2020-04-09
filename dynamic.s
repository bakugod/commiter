
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,esi
int	eax,ax
sub	eax,ebx
add	ip,esp
int	eip,ah
set	al,eax
set	eip,dx
or	ah,di
aas	di,bx
res	edi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
