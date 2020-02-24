
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,esp
mov	eip,ah
mov	bp,ax
set	esi,eip
aas	ax,ebp
add	al,bp
or	bx,ebx
int	ebx,edx
sub	sp,ebx
and	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
