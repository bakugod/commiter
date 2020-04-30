
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,edx
res	sp,bp
res	ebx,eax
int	ebx,dx
and	sp,di
res	bx,ebx
set	bx,si
int	bx,eax
set	ah,dx
and	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
