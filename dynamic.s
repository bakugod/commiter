
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	dx,cx
int	ebp,cx
and	cx,eax
and	ebx,esi
int	si,edi
and	bp,cx
int	ip,cx
and	eax,sp
or	edi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
