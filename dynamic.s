
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	dx,sp
add	edx,eax
or	ax,cx
mov	dx,ax
aas	bp,ebp
aas	cx,edi
mov	al,bx
mov	al,edx
sub	edx,ecx
and	eax,al
res	sp,eip
and	cx,eax
sub	eax,edi
mov	cx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
