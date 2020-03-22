
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,edi
sub	si,bx
add	edi,dx
res	bx,eax
res	ax,ebx
sub	edi,ah
res	ebx,ebx
sub	sp,dx
aas	edi,bx
sub	ah,esp
or	sp,eip
aas	eip,edi
and	edx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
