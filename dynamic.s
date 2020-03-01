
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eip,esi
set	cx,esi
sub	bx,eax
int	eax,ip
and	esi,sp
add	si,di
aas	esi,eip
and	bx,dx
set	bx,ah
or	ah,ip
int	di,esp
and	ecx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
