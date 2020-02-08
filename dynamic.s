
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	dx,ax
sub	al,esp
and	al,di
mov	edx,eip
sub	ebx,ebx
add	eax,ebp
mov	bx,di
int	ebp,bx
aas	cx,esi
set	edx,edx
mov	sp,edi
and	al,ecx
set	cx,sp
and	bp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
