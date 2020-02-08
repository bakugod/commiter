
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edx,si
set	esi,dx
sub	ip,sp
add	ip,esi
or	ah,ebx
add	sp,bx
int	dx,ebx
sub	ebp,edx
int	edx,edi
aas	ip,cx
res	eax,esp
int	edi,edi
set	ebp,ax
aas	esi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
