
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,edi
mov	al,esp
aas	cx,dx
int	esp,dx
res	edi,ebp
aas	eip,ecx
set	bx,ah
or	di,esp
mov	sp,cx
add	bx,si
add	esp,cx
or	sp,ecx
res	esp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
