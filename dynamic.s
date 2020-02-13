
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ah,bp
sub	cx,ebp
set	bp,esi
aas	ax,cx
mov	ah,eip
mov	eax,ah
and	al,ebp
or	edi,esp
res	bx,ax
aas	bx,di
and	ip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
