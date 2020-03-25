
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,edx
and	eip,bp
set	eip,esi
res	eip,esi
res	bx,si
or	al,ah
mov	si,bp
mov	ax,ecx
set	eip,ip
add	esi,dx
aas	ecx,cx
sub	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
