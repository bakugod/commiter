
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,al
mov	si,ecx
set	bx,bx
res	ah,bx
aas	bx,bx
add	ah,edx
add	di,ah
and	edx,si
set	bp,sp
res	di,ebp
set	esi,dx
mov	cx,edx
and	si,dx
or	sp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
