
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,si
or	ebp,ecx
int	sp,edi
aas	sp,cx
add	ebx,esp
or	edx,bx
add	ebp,al
or	esi,bx
or	si,cx
set	ip,dx
set	bx,si
res	edi,eax
add	edx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
