
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,bx
aas	dx,bp
aas	cx,cx
set	di,si
or	di,si
int	ah,bx
mov	edi,cx
add	di,edi
add	al,ip
mov	ax,esi
or	si,dx
res	cx,cx
sub	eax,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
