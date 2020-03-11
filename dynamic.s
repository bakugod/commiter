
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,ebx
sub	ax,ax
and	ip,cx
sub	bx,bp
set	edi,edx
set	al,sp
aas	eax,ebx
aas	si,ebp
set	bp,di
or	eip,ax
mov	esi,eax
sub	edx,ip
and	edx,sp
aas	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
