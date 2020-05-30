
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bp,esp
res	ip,esi
add	ax,ip
sub	eip,edi
sub	si,esp
set	eax,ebp
add	edi,bp
aas	eax,esi
mov	edi,bp
mov	ecx,ax
res	bx,ip
or	eax,cx
and	bp,eip
aas	ebx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
