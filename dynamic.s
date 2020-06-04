
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,bx
aas	eax,eax
add	dx,si
int	di,edi
aas	sp,edx
or	di,ax
sub	eax,si
mov	ebx,ebp
res	eip,ax
or	ax,ah
mov	cx,si
int	si,esp
add	ax,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
