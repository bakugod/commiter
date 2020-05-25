
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,ah
sub	esp,ebx
and	al,esi
and	bx,esp
add	ah,ebp
aas	cx,esp
add	al,edx
and	ebp,sp
aas	ecx,dx
and	eip,si
and	di,di
or	eax,bx
add	eax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
