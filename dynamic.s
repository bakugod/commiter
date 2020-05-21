
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,ah
or	eax,cx
and	ip,bx
sub	dx,sp
aas	bx,ebp
mov	ecx,esp
add	ebx,ebx
or	cx,eax
aas	eax,di
aas	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
