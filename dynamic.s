
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,dx
and	ax,ebp
aas	bp,ah
and	esi,eax
set	sp,cx
aas	ebp,al
res	ecx,esp
add	si,edx
int	ebx,dx
res	sp,esi
set	bp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
