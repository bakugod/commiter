
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,al
add	cx,di
and	edi,bx
sub	al,eax
int	ecx,esi
sub	ecx,cx
aas	esi,eip
res	ax,ecx
set	ebp,ebp
sub	ebp,cx
sub	esi,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
