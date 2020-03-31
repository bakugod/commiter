
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,bx
set	ecx,bp
and	ecx,edi
or	ah,bp
sub	ebx,ecx
sub	eip,esi
aas	al,eax
int	di,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
