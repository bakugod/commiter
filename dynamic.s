
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,bx
and	di,edx
int	sp,al
aas	ax,ax
aas	ip,esp
and	bp,dx
sub	eip,dx
add	edx,si
sub	si,ip
set	ecx,si
add	al,ebp
aas	ip,eip
or	cx,ax
or	dx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
