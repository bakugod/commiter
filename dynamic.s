
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bp,ecx
add	esp,sp
aas	ip,al
or	esp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
