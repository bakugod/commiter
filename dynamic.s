
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bx,ah
sub	eip,edx
res	ebx,ecx
int	bx,ebx
or	bp,esi
aas	esp,al
mov	bp,esp
add	eip,esi
set	eax,ebp
res	di,ax
or	eip,ecx
sub	esp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
