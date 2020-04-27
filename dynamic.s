
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,ah
mov	cx,al
mov	cx,ecx
mov	si,eax
and	bx,al
add	al,ebp
and	sp,ebx
mov	di,eax
and	esp,edx
aas	di,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
