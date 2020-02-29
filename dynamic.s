
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eax,esi
or	eax,ebp
set	bp,al
mov	ah,dx
sub	eax,ebp
add	edi,esi
and	esp,bx
aas	edi,ebp
mov	ax,eip
set	bx,ebp
aas	sp,esp
int	sp,esi
res	eip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
