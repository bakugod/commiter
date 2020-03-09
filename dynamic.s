
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,sp
res	al,sp
add	di,ebp
add	ip,ip
mov	esi,al
sub	si,ebp
or	ecx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
