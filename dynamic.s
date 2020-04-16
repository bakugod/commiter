
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,esp
sub	ax,edi
sub	ax,sp
res	esp,ax
int	si,edi
and	ah,ebx
mov	ebp,bx
or	ah,esp
res	ebp,al
aas	ah,cx
and	esp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
