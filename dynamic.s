
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,esi
mov	ebx,al
int	ebx,esp
aas	si,ebp
res	ip,ebx
add	edx,dx
int	cx,esp
or	bx,bp
res	dx,eax
mov	esi,eip
mov	ip,ip
sub	cx,si
aas	ax,edx
or	bx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
