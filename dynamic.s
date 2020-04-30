
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,bp
mov	eax,bx
set	dx,sp
set	esp,di
res	ecx,eax
int	di,ebp
set	ecx,ebx
int	ebx,si
add	ebp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
