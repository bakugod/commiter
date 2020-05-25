
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	si,edx
or	bp,ax
aas	dx,ax
set	ecx,ebp
and	dx,dx
mov	sp,sp
mov	eax,sp
add	ip,esi
add	ax,sp
aas	ah,dx
and	cx,ebp
and	si,ah
or	eip,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
