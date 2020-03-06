
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ecx,al
aas	esi,bx
set	sp,di
res	ebx,ah
or	bp,ecx
int	ax,eip
res	edx,esp
add	eax,esp
or	ebp,di
aas	ecx,bx
mov	si,eip
add	ebx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
