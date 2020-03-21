
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,dx
int	eip,si
sub	bx,di
res	edi,sp
mov	ip,ebx
mov	si,ah
add	edx,eax
sub	bx,cx
set	si,eax
aas	bp,ah
aas	eip,bx
set	esi,esp
and	ah,ah
res	ebp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
