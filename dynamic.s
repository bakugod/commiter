
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,ah
and	ax,bx
and	sp,esi
and	cx,ebp
and	cx,eip
or	eax,esi
and	edi,al
set	ebp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
