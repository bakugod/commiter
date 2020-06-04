
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,ebp
sub	di,al
add	ebp,esp
res	edi,esi
sub	al,ebx
aas	sp,bp
or	eip,al
sub	ah,ax
res	ebp,bx
add	ax,sp
set	di,dx
mov	esp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
