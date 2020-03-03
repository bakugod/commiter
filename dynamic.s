
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,sp
aas	bx,bp
add	esi,bp
res	di,sp
sub	si,edi
set	ip,sp
set	al,ecx
set	edi,esi
aas	dx,esp
or	edi,bx
mov	ebx,bx
int	bx,ecx
aas	ebx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
