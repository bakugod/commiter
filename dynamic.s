
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,bx
int	bx,al
set	cx,bx
int	eax,cx
int	edx,sp
add	esi,eax
sub	eip,sp
set	ip,si
int	esi,eax
set	cx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
