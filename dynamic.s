
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,bp
set	cx,dx
mov	eip,cx
set	ebp,esi
and	ebp,ebx
or	al,sp
and	ax,cx
aas	eax,esp
mov	eip,sp
sub	ax,al
add	esp,ebp
res	eip,cx
int	esp,sp
mov	si,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
