
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bp,ax
and	bp,ebp
sub	edi,cx
int	edx,edx
int	bp,bp
set	ebx,esi
sub	eax,si
aas	edx,ebx
int	edx,ebp
and	edi,di
or	ip,ah
or	ax,edi
and	ax,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
