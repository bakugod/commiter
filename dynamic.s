
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,ax
and	ecx,di
sub	sp,ip
and	bx,edx
aas	edi,cx
set	eip,al
mov	ax,si
set	edx,edi
set	si,eax
mov	ax,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
