
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,sp
set	dx,cx
res	al,ecx
aas	eax,esp
int	edx,eip
and	edi,eip
aas	edi,cx
and	ecx,bp
res	ax,dx
and	ah,dx
int	ebx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
