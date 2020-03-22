
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	dx,ah
set	bx,ebx
aas	ax,dx
sub	esp,al
or	sp,edx
mov	edi,ax
set	edi,bx
int	dx,bp
add	sp,ebp
or	ah,edx
mov	ax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
