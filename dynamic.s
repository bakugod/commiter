
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	dx,bx
mov	ax,esp
and	dx,esi
res	ebx,ebp
mov	sp,esi
and	cx,si
sub	edx,esi
and	al,ah
mov	di,eax
res	ebx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
