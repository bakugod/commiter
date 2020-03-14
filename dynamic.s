
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,ebp
sub	al,ip
res	esp,bx
or	edi,cx
res	edi,dx
and	ip,dx
and	ax,ip
set	ah,eip
add	ebp,esp
set	eip,edx
mov	eax,sp
add	eax,edx
or	esi,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
