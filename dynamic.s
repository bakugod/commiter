
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	di,ah
int	ebx,edx
mov	dx,edi
int	eax,ebx
mov	ah,eax
add	bp,esi
aas	bx,di
sub	ax,bp
sub	bx,ebp
set	di,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
