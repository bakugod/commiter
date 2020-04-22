
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,ah
res	bp,dx
aas	eax,dx
or	esi,ebp
aas	sp,sp
mov	esi,bx
or	bp,dx
or	edx,bp
and	cx,esi
mov	esi,esi
res	ebx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
