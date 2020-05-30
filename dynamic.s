
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eax,si
set	edx,esp
and	ax,bx
or	eax,cx
add	esi,eip
add	ebx,eip
add	sp,ebx
add	esi,ebp
mov	ecx,si
int	cx,bx
int	di,bx
aas	di,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
