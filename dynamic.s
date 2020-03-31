
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ebx,bp
aas	ecx,eip
set	si,esp
mov	ecx,edx
add	ax,sp
and	bx,al
or	esi,ax
mov	ecx,cx
and	sp,si
res	ax,edx
or	di,eax
mov	cx,eip
add	di,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
