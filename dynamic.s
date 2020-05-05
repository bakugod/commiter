
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,sp
mov	ecx,cx
int	bp,ah
add	sp,bp
sub	al,eip
and	edx,di
res	ah,sp
mov	bp,dx
set	edx,al
aas	cx,edi
res	bx,eip
sub	di,ah
and	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
