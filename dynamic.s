
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebp,cx
and	ebp,ah
add	eax,ah
int	eax,bp
int	di,eax
or	ebp,eax
res	edx,eip
mov	ax,ebx
int	cx,eip
aas	dx,eax
int	di,di
sub	ebp,al
int	ebx,cx
and	esi,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
