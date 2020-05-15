
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bp,ecx
aas	edi,ax
add	eip,edi
sub	ebp,esp
set	si,al
and	cx,al
aas	si,ebx
and	eax,dx
and	bp,bp
set	esi,ebp
or	si,esp
add	eip,sp
res	dx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
