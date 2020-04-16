
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,ax
or	edi,bx
mov	bx,ebx
set	eip,di
sub	ebx,cx
add	cx,ecx
aas	ip,cx
and	al,ip
or	ebx,di
int	si,eax
add	esi,edx
set	sp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
