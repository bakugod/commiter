
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bx,eax
int	ebp,ebx
res	edx,eip
or	edx,ecx
sub	si,bp
or	ax,al
set	cx,ax
or	ax,edx
or	al,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
