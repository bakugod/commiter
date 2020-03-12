
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ecx,ah
or	ebx,esp
aas	si,cx
or	ah,esi
sub	ip,ip
or	edi,dx
and	cx,sp
res	ah,bx
aas	ecx,si
aas	ecx,edx
aas	edx,cx
or	ecx,bx
sub	edi,bp
set	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
