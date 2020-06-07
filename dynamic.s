
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	al,edi
or	dx,bp
or	ebx,edx
mov	bx,di
and	al,ebx
add	ax,dx
sub	sp,eax
add	edi,di
mov	sp,di
or	bx,bx
and	dx,al
and	eip,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
