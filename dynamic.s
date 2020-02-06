
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,edx
int	ah,bx
add	bp,al
aas	bp,ah
add	cx,ax
add	dx,dx
or	ebx,eip
aas	ebp,eax
or	ip,ip
res	esi,eax
set	dx,edi
aas	si,sp
int	dx,ebp
or	dx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
