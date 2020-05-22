
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eip,eax
sub	ah,ebp
mov	ip,ebx
mov	ebp,eax
res	al,cx
or	al,sp
set	bp,bp
res	ax,edx
or	eip,esp
and	di,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
