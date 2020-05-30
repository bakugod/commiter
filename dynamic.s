
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,eax
add	eip,edx
add	bp,si
int	edx,cx
or	edx,al
set	di,ebp
add	eax,di
or	si,al
sub	ax,bx
add	esp,bp
or	ebp,ebx
add	sp,eip
set	ah,sp
sub	eip,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
