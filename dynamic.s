
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	dx,esi
aas	ip,ebp
sub	al,edx
set	ah,ebp
int	esp,sp
add	eip,ip
res	eax,ecx
add	di,ecx
add	si,ax
int	di,al
res	al,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
