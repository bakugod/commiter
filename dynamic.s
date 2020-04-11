
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ax,eax
set	esi,al
res	edx,sp
aas	si,dx
aas	ah,esp
res	edi,si
sub	ecx,edx
set	edx,ebx
aas	bx,cx
sub	ebx,si
set	bp,eip
int	eax,di
int	sp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
