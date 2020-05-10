
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,di
int	eax,bp
res	bp,edx
aas	si,eax
sub	ebp,bp
int	eip,ax
aas	edi,eax
sub	edi,esp
and	ah,ebp
int	sp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
