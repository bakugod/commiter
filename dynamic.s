
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eip,ax
or	bp,eip
set	di,bx
int	ebp,ax
set	eip,esp
or	eip,edi
or	esp,ax
mov	cx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
