
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ah,ip
sub	ecx,ah
res	bp,cx
or	edi,di
set	edi,si
add	si,dx
sub	cx,al
or	cx,edi
res	eip,bp
add	al,bp
add	cx,dx
mov	esi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
