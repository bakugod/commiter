
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eip,eip
and	ah,ah
aas	ip,edx
or	sp,ah
aas	bx,eax
add	dx,ah
sub	esp,ax
aas	ip,esp
aas	edi,si
sub	cx,dx
int	cx,bx
mov	bp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
