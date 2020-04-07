
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eax,si
aas	ip,ah
set	edx,di
sub	edx,ip
mov	ah,edi
add	ecx,cx
res	ebx,ip
add	si,ebp
add	ah,sp
add	dx,ecx
sub	bx,edx
or	bp,cx
res	esp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
