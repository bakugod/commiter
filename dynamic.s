
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	cx,di
aas	dx,bp
or	edi,dx
res	cx,ah
aas	edx,esi
int	eax,dx
aas	sp,ecx
and	eip,eip
set	dx,edx
or	bp,esp
res	ax,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
