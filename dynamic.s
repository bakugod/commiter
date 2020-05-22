
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,ip
or	ebp,bp
sub	ecx,ip
and	eip,edi
res	edi,bx
int	ax,ah
res	ah,bp
aas	al,si
set	edx,ax
int	bx,eax
set	si,esp
aas	si,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
