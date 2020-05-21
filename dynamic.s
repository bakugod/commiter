
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,esp
sub	esp,si
int	al,si
or	esi,di
set	ebx,edi
aas	dx,dx
res	edx,sp
int	edi,bp
res	ebp,esp
int	ecx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
