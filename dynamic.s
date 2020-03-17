
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,ax
int	ip,eip
add	sp,edx
int	al,dx
int	eax,bx
or	si,si
aas	dx,di
set	sp,bp
sub	ecx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
