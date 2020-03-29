
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,eax
mov	bx,esi
sub	ax,ebp
and	bp,edi
sub	ah,dx
set	cx,edx
or	bx,di
add	sp,eax
add	esi,eax
sub	si,ax
mov	dx,ax
int	ah,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
