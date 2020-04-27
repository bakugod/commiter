
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,bx
add	bp,cx
res	ah,bx
add	di,ecx
mov	bp,esi
aas	di,dx
aas	dx,bx
sub	al,si
and	esi,si
add	eax,sp
res	ip,ebx
add	eax,ecx
or	esp,ecx
mov	ecx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
