
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,dx
add	al,cx
sub	esp,ebp
aas	esi,bp
or	al,ebp
and	eax,bp
add	eip,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
