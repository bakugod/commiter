
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,bx
set	eip,bp
mov	ebx,ax
set	edx,eip
set	sp,ecx
res	al,esi
mov	ecx,eax
res	si,edx
add	esi,esi
and	di,ebx
mov	cx,sp
int	di,di
sub	ax,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
