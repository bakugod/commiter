
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,esp
or	dx,eax
mov	edi,edi
aas	dx,ip
sub	ebx,al
set	si,sp
mov	bx,ip
res	esp,eax
aas	esp,dx
aas	sp,ebp
res	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
