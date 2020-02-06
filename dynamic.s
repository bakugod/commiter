
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,eip
mov	cx,ip
aas	ax,ax
sub	bp,al
and	al,sp
add	eax,si
and	cx,si
aas	ip,edx
and	edx,eip
res	ebx,bp
res	edi,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
