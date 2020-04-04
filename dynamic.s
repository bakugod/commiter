
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,ebx
int	di,esp
or	bp,ah
and	dx,ebx
set	ecx,bp
add	si,di
add	al,dx
int	esp,dx
int	ah,ebx
or	esi,eip
int	eip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
