
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,ax
add	esi,ax
sub	ah,ax
or	bx,bp
set	di,esi
add	esi,ebp
int	al,ip
int	ip,dx
and	sp,esp
aas	edi,ah
sub	edi,ah
and	ebp,cx
or	ax,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
