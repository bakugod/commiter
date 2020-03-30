
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,ax
aas	di,eax
set	ebx,si
mov	esi,dx
set	dx,cx
set	sp,bp
or	edx,dx
aas	cx,sp
and	sp,cx
res	ebx,edi
add	sp,cx
set	esp,cx
sub	si,bx
and	ip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
