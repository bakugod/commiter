
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,bp
sub	ebp,dx
int	ebp,ip
int	ah,bx
set	cx,eax
and	di,esi
set	bp,dx
mov	bx,sp
set	ebx,ip
and	al,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
