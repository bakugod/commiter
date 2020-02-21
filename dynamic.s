
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	cx,esp
aas	ecx,cx
or	bx,ebx
add	eip,eax
res	ecx,esp
and	ebp,ip
res	di,esi
or	esi,sp
aas	ebx,bx
mov	ebx,ah
set	esp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
