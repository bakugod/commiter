
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	sp,eip
int	ebx,edx
res	ebx,edx
and	eip,dx
add	esp,dx
set	edi,sp
set	ah,sp
add	ecx,bp
sub	cx,esp
or	al,ax
res	ah,al
mov	bp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
