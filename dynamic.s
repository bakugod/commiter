
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,edx
set	sp,sp
int	sp,esi
aas	bp,dx
aas	eax,eax
aas	cx,sp
set	ah,eip
sub	edi,esp
sub	esi,edx
res	dx,cx
and	ebx,ecx
int	edi,cx
add	ah,ax
and	al,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
