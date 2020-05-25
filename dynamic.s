
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esp,ebp
or	bp,edi
int	esp,ax
res	edx,ebx
sub	bp,ebx
res	si,ip
sub	si,bx
aas	si,sp
and	edi,dx
set	bp,ax
set	ax,esi
or	ax,ax
res	bx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
