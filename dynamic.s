
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,bp
add	si,esp
add	edx,eip
int	eip,edx
add	ip,ah
add	ebx,al
or	eax,bp
mov	edx,ip
set	cx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
