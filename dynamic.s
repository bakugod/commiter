
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	al,edx
or	eip,ax
mov	al,edi
sub	bx,esi
mov	dx,eax
res	eip,esi
and	ip,si
sub	cx,ip
res	dx,edi
res	ip,ax
sub	bp,al
set	esp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
