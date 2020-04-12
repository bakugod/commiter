
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,ecx
sub	edi,edi
res	esi,ax
or	ebp,di
and	si,sp
res	bp,cx
int	ebp,ebx
aas	si,al
and	di,ax
sub	si,ebp
mov	al,di
int	edx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
