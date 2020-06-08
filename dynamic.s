
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,bx
aas	bx,si
int	ebp,ebx
or	ebx,ah
and	bp,dx
or	si,ebx
add	bp,bp
sub	ebp,al
res	si,sp
sub	ecx,ebp
res	al,cx
sub	ah,bx
mov	esi,si
and	ebp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
