
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebx,edx
set	di,eax
sub	bp,ebp
mov	di,di
res	edx,al
mov	ecx,cx
set	edx,bx
set	ax,ax
int	sp,eax
aas	ip,eax
mov	ip,esp
and	sp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
