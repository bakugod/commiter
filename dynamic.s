
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,esi
mov	eip,cx
add	si,al
res	edi,eip
set	sp,sp
and	edx,bx
add	cx,ah
set	edi,eip
set	al,ah
res	ip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
