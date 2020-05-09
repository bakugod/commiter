
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,edi
and	ebx,ip
and	al,edx
sub	sp,ebp
or	ah,ebx
or	sp,al
set	bx,ip
sub	edx,ah
mov	si,eip
and	ip,bx
res	bx,ebp
and	ah,al
aas	ah,eax
add	bx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
