
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,eax
and	si,bx
aas	sp,al
or	si,di
and	dx,esp
int	ebx,al
int	al,dx
res	ah,di
add	si,eip
aas	cx,di
set	di,ebp
and	bx,ebp
or	ip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
