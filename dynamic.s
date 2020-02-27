
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eip,bx
or	al,ip
set	di,ebp
res	ip,ax
set	esp,ebp
set	ah,di
int	ip,edx
res	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
