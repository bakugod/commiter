
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ip,esp
sub	si,cx
and	ah,ebp
aas	edx,sp
int	sp,edx
and	eip,ax
mov	ah,esi
aas	al,ip
add	eax,bx
mov	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
