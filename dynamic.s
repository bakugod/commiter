
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eip,dx
and	edi,ax
int	bp,esp
and	ecx,ebx
int	edi,edx
mov	ah,al
int	esi,di
aas	ebp,ecx
int	edi,eip
res	al,bp
sub	edi,cx
aas	eip,ebx
int	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
