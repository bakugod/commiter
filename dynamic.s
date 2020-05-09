
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,ebp
add	cx,ebx
mov	cx,cx
res	bx,ah
add	ecx,esi
sub	eax,edi
mov	si,dx
aas	eax,eax
sub	cx,dx
or	cx,ip
int	ip,edi
mov	si,al
int	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
