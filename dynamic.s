
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,bp
res	ax,edi
res	eip,eip
or	ip,bp
sub	sp,edi
int	dx,ax
or	ebp,eax
or	ip,ebp
mov	eax,ah
aas	eip,eax
res	dx,sp
and	cx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
