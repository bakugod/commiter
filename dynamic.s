
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,bx
aas	al,cx
sub	ip,ah
aas	ebp,edi
int	edi,edi
sub	bp,eip
sub	eip,al
or	di,eax
res	di,cx
mov	eip,dx
and	bp,bx
mov	ecx,eip
res	al,si
res	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
