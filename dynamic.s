
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bx,ax
aas	sp,ebp
set	ah,ax
int	ip,eax
add	esi,ip
add	cx,eip
set	edi,sp
and	eax,esp
mov	ebp,ip
or	di,ebx
res	eax,al
add	cx,esi
or	ebp,di
sub	eip,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
