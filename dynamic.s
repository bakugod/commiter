
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,ip
sub	ebp,ebx
aas	ax,dx
add	al,ah
add	ah,si
sub	si,ebp
set	edi,di
aas	bx,eip
set	esp,ecx
or	bp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
