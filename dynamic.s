
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,esp
mov	ax,ebp
mov	edi,ah
set	eax,sp
add	cx,ax
res	bp,eip
aas	al,esp
and	sp,esi
sub	al,ebp
add	edx,bx
set	ecx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
