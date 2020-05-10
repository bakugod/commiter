
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,esp
int	si,ip
add	si,eax
sub	ecx,bp
mov	edi,al
mov	esi,dx
mov	bp,esp
int	ebx,esp
or	al,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
