
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,di
and	eax,esp
res	edx,eip
int	bx,di
sub	sp,cx
aas	sp,ecx
int	bx,ah
int	eip,bp
and	si,ebx
aas	edi,di
int	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
