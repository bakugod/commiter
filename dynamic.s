
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,ax
sub	bx,eax
sub	cx,esp
add	ax,edx
res	ecx,ecx
or	esi,bx
mov	eax,eip
or	di,ebx
mov	dx,ebp
mov	sp,ah
mov	di,esi
add	di,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
