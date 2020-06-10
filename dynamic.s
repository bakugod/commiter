
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	dx,cx
set	al,sp
add	al,al
mov	bp,esp
or	ecx,eip
sub	al,di
int	al,esi
aas	esp,bp
add	sp,edi
or	eip,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
