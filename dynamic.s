
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,si
add	bp,ebx
add	edi,edx
set	dx,ah
and	ax,edi
mov	bx,ax
set	eip,dx
or	edx,ebp
or	esp,cx
set	eax,eip
aas	bp,dx
set	sp,di
set	bx,ax
res	al,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
