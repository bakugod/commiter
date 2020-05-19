
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ip,esi
res	al,di
add	esi,dx
res	esi,ebp
sub	bp,ebp
res	ah,ebx
int	ecx,esp
set	bx,cx
res	ebp,edx
or	sp,dx
add	di,edi
add	sp,cx
mov	edx,eax
aas	eax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
