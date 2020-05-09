
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eip,sp
res	edi,eip
mov	sp,eip
mov	edx,cx
add	cx,eip
sub	al,ah
res	ax,ip
sub	bx,ecx
sub	ebx,al
and	eax,ax
sub	eax,cx
int	ecx,edx
int	ax,al
and	bp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
