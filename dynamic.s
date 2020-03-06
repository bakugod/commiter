
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,di
and	al,cx
set	bx,eax
add	eip,di
set	ax,bp
res	ecx,al
add	eax,ebp
mov	eax,ebx
sub	ebx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
