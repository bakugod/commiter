
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,edi
set	cx,sp
aas	ecx,edi
mov	al,edx
sub	esi,bx
sub	ebx,edi
sub	cx,eax
set	edi,cx
add	sp,ebp
aas	ah,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
