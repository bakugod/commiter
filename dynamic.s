
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,al
sub	eip,bp
aas	ebp,sp
and	ebx,edx
res	ah,bx
set	al,ip
aas	edi,dx
add	ebx,ah
set	al,ah
int	esp,bx
mov	ecx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
