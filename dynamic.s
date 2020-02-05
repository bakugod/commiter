
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,sp
int	edx,di
sub	ah,bx
sub	ip,edx
int	di,si
and	ecx,eip
aas	edi,edi
add	ebp,edi
add	ax,edx
mov	ah,ecx
mov	eip,ebp
and	bx,di
or	bx,edx
aas	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
