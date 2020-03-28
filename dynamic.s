
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,al
aas	ah,si
aas	dx,bx
aas	ebp,esi
add	bp,ecx
res	sp,sp
set	bx,ecx
and	di,sp
sub	cx,eax
sub	edi,bp
sub	di,eax
aas	ax,esp
or	esi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
