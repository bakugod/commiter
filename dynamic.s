
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,ax
set	ax,eax
int	edx,bx
sub	sp,di
add	ax,ebx
aas	esi,eax
add	esi,ax
aas	ah,ah
add	di,dx
res	ebx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
