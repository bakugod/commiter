
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	dx,eax
res	edx,bx
aas	sp,esp
add	ebp,ah
sub	cx,edi
add	bx,al
add	bx,ebp
or	ecx,dx
aas	edx,ecx
mov	eip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
