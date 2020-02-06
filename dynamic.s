
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,ah
and	di,eax
res	si,edi
res	bx,esi
and	di,ecx
int	ebx,eip
int	bp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
