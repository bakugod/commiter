
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,ebx
aas	esi,ax
or	edi,bp
sub	eip,al
set	ax,edx
sub	al,di
mov	esi,ax
mov	sp,di
or	dx,ebx
sub	cx,cx
and	al,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
