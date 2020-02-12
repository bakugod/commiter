
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,cx
int	sp,al
sub	sp,sp
sub	si,cx
res	ecx,cx
and	ax,ax
aas	esi,sp
aas	dx,si
res	cx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
