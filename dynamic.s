
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	al,dx
mov	edi,ip
or	edx,ip
aas	si,ah
add	dx,si
and	esp,eip
sub	dx,edx
set	edi,al
set	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
