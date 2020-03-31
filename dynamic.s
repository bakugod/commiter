
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,ah
set	esi,esp
mov	ah,bx
int	bp,edx
and	ah,eip
or	sp,edi
res	ip,bx
set	dx,ebx
res	dx,al
mov	esp,edi
add	dx,al
add	ax,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
