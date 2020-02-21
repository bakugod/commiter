
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,cx
res	bx,esi
set	ip,ebp
and	ip,ebp
set	ecx,si
add	ip,ebp
or	edx,eip
aas	ebp,ah
and	ip,sp
mov	ebx,sp
aas	sp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
