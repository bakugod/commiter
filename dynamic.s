
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	al,esp
and	edx,di
or	di,ebp
set	ip,bx
and	si,eax
aas	bx,ah
and	cx,di
set	esp,dx
mov	sp,edi
add	ecx,ah
int	ebp,ebp
res	eax,al
add	cx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
