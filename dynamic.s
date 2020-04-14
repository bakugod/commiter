
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	sp,ah
aas	edi,ax
set	bp,ax
or	bx,ah
set	al,al
or	eax,edi
aas	ebp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
