
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,ah
int	cx,si
res	bx,ip
aas	ip,bp
int	di,esp
mov	eax,bx
and	al,si
or	si,ebx
set	ecx,eax
aas	eax,cx
sub	al,cx
int	di,cx
res	ebp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
