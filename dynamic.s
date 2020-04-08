
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,esp
sub	edx,dx
set	esp,ax
sub	ip,ip
sub	di,edx
set	edx,bp
set	bp,cx
sub	edx,ecx
sub	edx,edx
int	ecx,bx
sub	eip,bp
add	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
