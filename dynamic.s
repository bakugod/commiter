
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,al
or	esi,ah
mov	ip,edi
set	ecx,ax
res	al,eax
sub	ah,ebx
aas	ebp,ax
or	bx,ecx
or	edx,bp
aas	esi,al
res	ecx,esi
mov	edx,ebx
int	eip,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
