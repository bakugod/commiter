
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,ip
add	esp,ah
int	edx,edx
res	eax,di
int	edi,ip
add	bx,al
set	ebx,si
aas	ebp,esp
int	edi,ah
aas	di,esi
int	ebp,edi
aas	ebx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
