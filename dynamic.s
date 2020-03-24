
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bp,eax
res	edx,si
aas	ah,ax
res	ip,si
and	al,sp
set	ecx,edi
res	edx,ax
sub	ah,si
aas	bp,esp
and	si,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
