
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,ax
or	bp,esp
or	al,esi
int	esi,bx
sub	di,sp
or	ebx,bp
or	eip,eax
res	edx,edi
sub	esi,dx
sub	esi,si
and	ax,si
res	bp,ebx
aas	al,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
