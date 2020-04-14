
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebp,sp
and	ip,bp
and	ecx,bx
add	sp,bx
res	edi,ax
mov	esp,di
mov	bx,dx
sub	bx,ip
res	al,ax
int	di,ah
set	edx,ax
add	ip,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
