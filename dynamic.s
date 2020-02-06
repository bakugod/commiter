
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,sp
aas	dx,eip
and	eip,cx
int	al,edi
and	ah,edi
and	edi,edx
set	ebx,cx
and	ah,ip
or	esp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
