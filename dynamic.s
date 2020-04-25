
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,al
set	bx,si
or	ax,ax
sub	eax,cx
and	di,ebx
int	sp,ah
add	bx,bx
res	edi,di
and	dx,ecx
aas	bx,ax
and	dx,edx
int	eax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
