
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,edi
and	esp,eip
add	ah,edi
sub	cx,si
mov	eax,ecx
mov	eax,edi
int	di,ebp
res	al,esp
and	cx,edx
mov	ah,eax
or	esp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
