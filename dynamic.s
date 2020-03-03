
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,esp
res	al,cx
sub	di,ah
int	ax,bp
res	ebx,si
set	ecx,cx
aas	eax,eip
sub	ip,esi
mov	eip,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
