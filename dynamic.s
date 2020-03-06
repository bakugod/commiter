
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esp,edx
mov	eax,bx
res	bp,edi
add	eip,eax
set	sp,ah
set	ebx,bx
or	eip,eip
set	edx,ebx
set	esp,bx
res	sp,ah
aas	ip,edx
mov	bx,ebx
set	ebp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
