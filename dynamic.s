
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,ebp
and	eip,bx
set	eax,di
aas	sp,bx
int	cx,ebp
add	sp,bx
int	si,ebp
set	eip,ip
and	esp,ecx
add	di,edi
mov	bx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
