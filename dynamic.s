
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	al,eip
int	ebx,esp
or	ebp,bx
aas	ax,ebp
and	bx,si
sub	eip,al
or	ip,eip
mov	edx,si
mov	edi,bx
sub	edi,esi
aas	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
