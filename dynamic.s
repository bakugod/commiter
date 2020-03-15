
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	al,dx
aas	di,edi
or	ax,eip
and	si,si
sub	bx,ip
int	ip,dx
mov	edx,esp
res	edx,sp
aas	ah,di
res	edx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
