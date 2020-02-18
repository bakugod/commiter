
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,di
res	edi,bx
res	bp,ebx
or	ax,di
set	eip,sp
add	esi,ah
res	sp,esp
add	ebp,di
int	si,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
