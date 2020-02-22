
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,esi
and	eip,ah
and	si,ebp
set	ah,al
int	cx,esp
aas	esi,cx
set	edi,dx
int	ebx,eip
and	ah,sp
and	edx,cx
aas	ip,edi
and	esp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
