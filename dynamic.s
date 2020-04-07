
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ip,di
and	di,eax
sub	bp,ebx
add	edi,esp
or	si,cx
set	bp,ax
sub	ax,esp
and	bp,ax
sub	bp,ecx
set	al,bp
res	ebp,bp
mov	ip,dx
or	eip,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
