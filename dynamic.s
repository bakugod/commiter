
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ip,dx
mov	edx,esp
mov	al,edi
mov	ip,ecx
aas	al,ah
aas	bp,ah
mov	ebp,si
res	si,edx
sub	bp,esp
add	esi,bp
or	ah,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
