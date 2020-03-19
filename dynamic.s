
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	sp,ecx
sub	al,bp
add	ah,ecx
and	cx,eax
sub	edx,cx
res	si,al
add	dx,ebx
set	ip,dx
set	bp,eip
set	cx,edx
set	ax,ax
aas	esi,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
