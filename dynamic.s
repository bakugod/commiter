
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eip,eip
res	ip,cx
sub	di,ebp
int	cx,ebx
aas	di,dx
mov	ecx,di
res	edi,ah
sub	al,eip
add	esp,esp
or	esp,cx
and	esp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
