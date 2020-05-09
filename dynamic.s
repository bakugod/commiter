
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,al
and	di,edx
or	ebx,ebx
int	bx,eip
add	sp,ebp
add	ah,al
or	ax,sp
res	eax,al
aas	bp,cx
sub	al,ebx
mov	edi,ecx
res	bp,ebp
res	bp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
