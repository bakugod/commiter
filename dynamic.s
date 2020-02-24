
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	dx,cx
or	edi,ebp
or	esp,edi
add	cx,ebx
mov	dx,sp
and	ebp,eax
and	bx,ebp
res	bp,si
int	dx,ebx
sub	sp,ah
mov	esp,bx
and	dx,sp
res	ax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
