
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,ax
or	ip,ip
set	esp,ebp
res	sp,edi
set	edi,ebp
mov	si,edx
res	ebp,al
aas	al,edx
int	ah,dx
res	bx,bx
or	eip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
