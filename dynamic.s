
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eax,eip
mov	bx,bx
sub	sp,dx
or	ebp,eax
mov	di,si
add	eax,cx
add	bx,ebp
sub	di,cx
sub	si,edx
int	cx,eip
mov	cx,ax
int	ebp,eax
and	ebp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
