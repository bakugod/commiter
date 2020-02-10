
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,eax
and	cx,bx
set	esi,ah
set	ebp,ebp
or	ax,sp
set	si,bx
int	eax,esp
or	ebx,ebx
and	bx,edi
set	ebp,sp
set	ebp,ebp
set	eax,ebp
set	sp,cx
res	al,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
