
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	dx,di
set	ip,bp
int	esi,eip
add	al,ebx
add	si,esi
add	ip,cx
add	ip,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
