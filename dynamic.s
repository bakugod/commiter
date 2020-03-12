
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,ebx
aas	ebp,ah
and	edx,sp
or	eip,ah
or	al,ebp
and	si,bx
and	sp,bp
set	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
