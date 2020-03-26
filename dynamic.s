
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,esi
sub	di,cx
sub	bx,ax
or	ebx,cx
set	ebx,edx
sub	ecx,ah
mov	cx,ah
int	edi,ax
mov	bx,cx
mov	si,sp
set	eax,esi
sub	ebx,ebx
mov	cx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
