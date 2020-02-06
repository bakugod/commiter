
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebp,ip
aas	dx,ip
sub	esp,di
int	ebx,edi
add	ebp,al
aas	si,esi
sub	bp,ip
mov	cx,bp
set	bp,eip
res	ebx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
