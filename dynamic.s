
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,ebp
add	bx,eip
mov	ah,eip
add	si,al
set	al,ebx
int	esi,ebx
mov	esi,bp
res	ax,edx
or	bp,ax
res	ah,dx
aas	ah,ax
sub	ax,ebx
int	bp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
