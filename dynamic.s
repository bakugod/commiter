
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,esi
sub	di,ebx
or	si,sp
or	cx,di
set	esp,ah
add	esp,ebp
int	dx,ecx
aas	cx,esi
int	ebp,al
res	esp,ebp
sub	dx,esp
or	eip,ah
res	bx,ax
or	si,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
