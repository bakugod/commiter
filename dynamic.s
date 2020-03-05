
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bx,si
mov	edx,bp
set	ecx,ax
set	edi,cx
sub	ip,sp
int	ax,ebx
sub	ip,bp
set	ebp,sp
res	si,di
aas	sp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
