
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,si
and	edi,edi
or	ebp,sp
add	edi,ah
mov	ax,edi
and	al,sp
set	esi,cx
set	sp,al
mov	esi,bx
res	ax,eax
int	esi,esi
res	ip,esi
mov	edx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
