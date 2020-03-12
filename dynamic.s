
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,dx
aas	eip,eax
mov	eax,ecx
int	ebp,bx
and	bx,cx
mov	ebx,ah
int	ax,sp
aas	ah,sp
sub	ecx,al
and	edi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
