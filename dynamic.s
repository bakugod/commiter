
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,ebx
int	bp,al
int	ebx,esp
or	al,bx
add	esi,esi
res	eax,cx
sub	esi,eip
sub	ebx,sp
and	di,bp
add	edx,esi
sub	di,ecx
add	esi,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
