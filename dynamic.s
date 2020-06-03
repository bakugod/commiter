
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,edi
set	di,di
res	si,di
and	edx,dx
res	eip,ebx
int	cx,al
or	ah,eax
set	eip,di
aas	bx,edi
int	edx,ip
sub	bx,ah
sub	ax,ip
int	esp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
