
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,edi
set	sp,bx
set	edi,al
set	si,di
add	ecx,al
aas	cx,ip
aas	ah,al
or	edi,edi
sub	bp,ebp
set	ax,di
add	di,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
