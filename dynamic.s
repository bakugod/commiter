
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,di
or	ax,esp
aas	di,ah
sub	ah,sp
and	eip,edi
or	edx,bp
mov	ecx,edx
mov	di,ecx
res	sp,ecx
int	eip,bx
res	bp,ebx
res	ax,bp
res	edi,esi
int	dx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
