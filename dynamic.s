
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,sp
sub	edi,eip
aas	ah,ah
sub	eip,di
and	eip,eip
mov	esp,sp
aas	bp,ip
or	eip,edi
and	bx,ax
and	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
