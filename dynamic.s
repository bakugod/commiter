
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,esp
res	ip,ax
int	eip,edx
and	bx,sp
int	sp,sp
res	edx,edi
int	si,ax
aas	eip,eip
mov	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
