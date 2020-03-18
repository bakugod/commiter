
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ax,bx
add	edx,ebp
mov	dx,sp
mov	di,dx
aas	ah,di
int	ebx,sp
and	sp,bx
aas	bx,eip
set	si,si
mov	esp,edx
add	di,bp
set	si,edi
and	ecx,bp
set	eip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
