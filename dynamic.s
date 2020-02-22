
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,cx
mov	al,esi
set	ebp,eax
aas	ah,edi
add	cx,ebx
sub	eax,bx
and	esi,eip
and	sp,eax
mov	esi,al
and	edi,edi
add	bx,eax
set	dx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
