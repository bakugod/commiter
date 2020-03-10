
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ip,ax
aas	esp,dx
or	ecx,eax
add	sp,si
res	ax,ip
set	si,si
or	ah,ip
and	sp,sp
mov	ebx,bx
and	edi,ip
add	sp,edx
sub	dx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
