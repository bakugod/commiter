
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,al
sub	bx,sp
or	ecx,esp
or	al,di
sub	ip,bx
add	esi,si
mov	di,dx
sub	di,al
set	al,ah
aas	bp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
