
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,ip
res	ip,sp
set	ebx,al
mov	al,si
or	esp,al
or	ebp,bp
mov	ebp,eax
mov	edi,edx
or	al,bx
add	ah,cx
mov	al,ax
sub	bp,cx
add	sp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
