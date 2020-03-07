
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,ebp
aas	bx,eip
or	edi,ax
aas	al,edx
res	di,esp
and	ebx,sp
set	dx,ah
sub	esp,al
mov	edi,ebp
or	eip,cx
or	edx,ip
add	al,ip
or	ecx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
